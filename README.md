# Identifier Mangling Pass

An LLVM module pass that performs **identifier mangling** at the IR level — randomizing function names, global variable names, and struct type names at compile time to hinder static analysis and reverse engineering.

---

## How it works

The pass hooks into LLVM's new pass manager as a **module pass** — meaning it operates on the entire module at once rather than function by function.

For each module it processes:

1. **Functions** — every non-declaration function except `main` gets its name replaced with a 10-character random alphanumeric string
2. **Global variables** — all defined global variables are renamed; external declarations are left untouched to preserve linkage
3. **Struct types** — all named struct types are renamed

The randomization uses `std::mt19937` seeded from `std::random_device` by default. Set `MANGLE_SEED` in the environment for reproducible output (see [Reproducibility](#reproducibility)).

Generated names always start with a letter (`a-z`, `A-Z`) followed by 9 alphanumeric characters (`a-z`, `A-Z`, `0-9`), avoiding symbol names that begin with a digit.

The pass operates at the **LLVM IR level**, not the source level — which means:
- It's language-agnostic (works on any language that compiles to LLVM IR)
- Symbol renaming is consistent within the module (all references are updated)
- Debug symbols and DWARF info still reference original names unless stripped separately

---

## Prerequisites

- LLVM (tested with LLVM 14+)
- CMake ≥ 3.13
- Clang (to compile input code to IR)

---

## Build

```bash
git clone https://github.com/Ily455/IM-LLVM-Pass.git
cd IM-LLVM-Pass
mkdir build && cd build
cmake ..
make
```

This produces `build/ManglePass.so`.

---

## Usage

### 1. Compile your source to LLVM IR

```bash
clang -S -emit-llvm input.c -o input.ll
```

### 2. Run the pass

Produce readable IR:
```bash
opt -S -load-pass-plugin ./build/ManglePass.so -passes=manglepass input.ll -o output.ll
```

Produce bitcode:
```bash
opt -load-pass-plugin ./build/ManglePass.so -passes=manglepass input.ll -o output.bc
```

### 3. Compile the mangled IR to a binary

```bash
clang output.ll -o output
```

---

## Reproducibility

By default, a different random seed is used on every run. To get deterministic output (useful for CI diffs or debugging):

```bash
MANGLE_SEED=42 opt -S -load-pass-plugin ./build/ManglePass.so -passes=manglepass input.ll -o output.ll
```

The same seed always produces the same name mapping for a given input module.

---

## Example

See the [`example/`](example/) directory for a full walkthrough.

Input C code with meaningful names:

```c
struct structurino { int iks; int igrig; };
int varstandsforvideoassistantrefereee = 666;
void my_function(int a, int b) { ... }
```

After the pass — all identifiers replaced with random strings at the IR level:

**IR diff:**

![IR diff](example/IR-diff.png)

**Assembly diff:**

![Assembly diff](example/assembly-diff.png)

The binary remains functionally identical — only the symbol names change.

---

## Limitations

Identifier mangling is a **weak standalone obfuscation**. A few things worth knowing:

- `main` is intentionally preserved (required entry point for the linker)
- External function declarations (e.g. `printf`) are not renamed — they are references to symbols defined outside the module
- External global variable declarations (`extern int x`) are not renamed for the same reason — renaming them would break linkage
- Struct type names live only in debug info and IR metadata; renaming them has no effect on the binary's runtime behavior
- Debug info (`-g`) still embeds original names in DWARF sections — strip separately with `llvm-strip --strip-debug`
- This pass is designed for single-module use (one `.ll` file → one binary). Applying it per translation unit in a multi-TU project requires care: only internal symbols can be safely mangled across TU boundaries
- A determined analyst can recover intent through dataflow analysis regardless of symbol names
- This pass is designed as a building block, not a complete obfuscation solution

---

## Project structure

```
IM-LLVM-Pass/
├── ManglePass.cpp       # Pass implementation
├── CMakeLists.txt       # Build configuration
├── LICENSE
└── example/
    ├── test.c           # Sample input
    ├── test.ll          # Normal IR
    ├── mangled-test.ll  # IR after pass
    ├── normal-assembly.asm
    ├── mangled-assembly.asm
    ├── IR-diff.png
    └── assembly-diff.png
```

---

## License

MIT — see [LICENSE](LICENSE).
