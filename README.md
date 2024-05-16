# Identifier Mangling Pass

An LLVM pass designed to obfuscate the names of identifiers in LLVM Intermediate Representation (IR) code

## Features

- **Function Name Mangling**: Renames function identifiers with randomly generated strings to replace original names.
- **Global Variable Name Mangling**: Renames global variable identifiers with randomly generated strings.
- **Struct Name Mangling**: Renames struct type identifiers with randomly generated strings.

## Installation

1. Clone this repository
     ```bash
     git clone https://github.com/Ily455/IM-LLVM-Pass.git
     ```
2. Compile the Pass
   ```bash
    mkdir build
    cd build
    cmake ..
    make
   ```

## Usage

1. Compile your C/C++ code to LLVM IR using Clang

    ```bash
    clang -S -emit-llvm input.c -o input.ll
    ```

2. Run the Identifier Mangling Pass on the LLVM IR code using the `opt` tool.

    ```bash
    opt -load-pass-plugin /path/to/ManglePass.so -passes=manglepass < input.ll > output.ll
    ```
    This produces bitcode.
   ```bash
    opt -load-pass-plugin /path/to/ManglePass.so -passes=manglepass < input.ll > output.ll
   ```
   This produces readable IR.

4. The output LLVM IR code (`output.ll`) will have the function names, global variable names, and struct type names mangled with randomly generated strings.

## Example & Diff

See [example](example/)

## License

The Identifier Mangling Pass is licensed under the [MIT License](LICENSE).
