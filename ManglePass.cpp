#include "llvm/IR/PassManager.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include <cstdlib>
#include <random>
#include <string>

using namespace llvm;

namespace {

// Returns a seeded PRNG. If MANGLE_SEED is set in the environment, uses that
// value for reproducible output; otherwise seeds from std::random_device.
static std::mt19937 makePRNG() {
  const char *env = std::getenv("MANGLE_SEED");
  if (env) {
    try { return std::mt19937(std::stoull(env)); } catch (...) {}
  }
  return std::mt19937(std::random_device{}());
}

struct ManglePass : public PassInfoMixin<ManglePass> {
  std::mt19937 generator;
  std::uniform_int_distribution<> charDist{0, 61};   // a-z, A-Z, 0-9
  std::uniform_int_distribution<> letterDist{0, 51}; // a-z, A-Z only

  ManglePass() : generator(makePRNG()) {}

  char randomLetter() {
    int v = letterDist(generator);
    return v < 26 ? 'a' + v : 'A' + (v - 26);
  }

  char randomAlphanumChar() {
    int v = charDist(generator);
    if (v < 26) return 'a' + v;
    if (v < 52) return 'A' + (v - 26);
    return '0' + (v - 52);
  }

  // Generates a 10-character random alphanumeric string that always starts
  // with a letter, avoiding symbol names that begin with a digit.
  std::string randomName() {
    std::string s(10, '\0');
    s[0] = randomLetter();
    for (size_t i = 1; i < 10; ++i)
      s[i] = randomAlphanumChar();
    return s;
  }

  PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
    bool changed = false;

    // Mangle defined (non-declaration) functions, except main.
    for (Function &F : M) {
      if (!F.isDeclaration() && F.getName() != "main") {
        F.setName(randomName());
        changed = true;
      }
    }

    // Mangle defined global variables only.
    // External declarations are skipped — renaming them would break linkage
    // against the symbols they reference in other modules or libraries.
    for (GlobalVariable &GV : M.globals()) {
      if (!GV.isDeclaration()) {
        GV.setName(randomName());
        changed = true;
      }
    }

    // Mangle named struct types.
    for (StructType *ST : M.getIdentifiedStructTypes()) {
      if (ST->hasName()) {
        ST->setName(randomName());
        changed = true;
      }
    }

    return changed ? PreservedAnalyses::none() : PreservedAnalyses::all();
  }
};

} // namespace

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION, "ManglePass", LLVM_VERSION_STRING,
    [](PassBuilder &PB) {
      PB.registerPipelineParsingCallback(
        [](StringRef Name, ModulePassManager &MPM,
           ArrayRef<PassBuilder::PipelineElement>) {
          if (Name == "manglepass") {
            MPM.addPass(ManglePass());
            return true;
          }
          return false;
        }
      );
    }
  };
}
