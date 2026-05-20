# Basics of Coding Julia

## Preface

What this text is and what it is not: This text is intended to introduce the reader to the basics of the Julia programming language in the sense that they will be able to write minimal types of programs and run the code. It is not intended to go into advanced topics like advanced data structures, object-oriented programming, testing and debugging techniques and other software engineering principals.

The programs are intended to be run in the terminal as that is common to most operating systems. Linux and Mac come preinstalled with a terminal. Windows may or may not have it pre-installed. "Windows Terminal" can be installed from the Microsoft store. Just do a search for it and install it.

## Installation and Setup of Julia

To setup Julia for use, navigate to the [Julia](https://julialang.org/downloads/) website and locate an appropriate installer for your operating system. Install and follow the directions on how to perform further settings for use. A package manager makes the install process much easier (brew for Mac, winget or scoop for Windows, and varies based on linux distribution). If the language has been installed properly you will be able to type the following command in the terminal command line and receive the response shown:

```text
julia --version
julia version 1.12.2
(Note: the version shown here varies with your installed version)
```

## How to Run Examples

Each lesson folder contains a `.jl` source file and a `.md` file showing the run command and expected output. To run any example, navigate to its folder in your terminal first, then use the command shown in the `.md` file:

```sh
cd 01_hello-world
julia hello-world.jl
```

Concurrency lessons (27–37) require multiple threads:

```sh
JULIA_NUM_THREADS=4 julia goroutines.jl
```

## Comments

Comments are used to document what your code does so that others can understand it when reviewing your code. Comments also document items that are non-performant in order to debug the code items at a later date.

```julia
# This is a single-line comment

#=
  This is a
  multi-line comment
=#
```

## Keywords

| | | | | |
|:----------:|:---------:|:--------:|:----------:|:--------:|
| abstract   | baremodule | begin   | break      | catch    |
| const      | continue  | do       | else       | elseif   |
| end        | export    | false    | finally    | for      |
| function   | global    | if       | import     | in       |
| let        | local     | macro    | module     | mutable  |
| primitive  | quote     | return   | struct     | true     |
| try        | type      | using    | while      |          |

## Operators

### Arithmetic Operators

| Operator | Description |
|:--------:|:------------|
| **+**    | add one number to another number |
| **-**    | subtract one number from another number |
| **\***   | multiply one number by another number |
| **/**    | divide one number by another number |
| **÷**    | integer (floor) division |
| **%**    | remainder of dividing one number by another number |
| **^**    | exponentiation (power) |

### Comparison Operators

| Operator | Description |
|:--------:|:------------|
| **==**   | check if a variable is equal to another |
| **!=**   | check if a variable is not equal to another |
| **>**    | check if a variable is greater than another |
| **<**    | check if a variable is less than another |
| **>=**   | check if a variable is greater than or equal to another |
| **<=**   | check if a variable is less than or equal to another |
| **===**  | check if two values are identical (same object) |

### Logical Operators

| Operator  | Description |
|:---------:|:------------|
| **&&**    | returns true if both statements are true |
| **\|\|**  | returns true if one of the statements is true |
| **!**     | reverse the result of a true or false statement |

### Assignment Operators

| Operator  | Description |
|:---------:|:------------|
| **=**     | assign a value to a variable |
| **+=**    | add a number to the existing value of a variable and assign the result |
| **-=**    | subtract a number from the existing value of a variable and assign the result |
| **\*=**   | multiply the existing value of a variable by a number and assign the result |
| **/=**    | divide the existing value of a variable by a number and assign the result |
| **%=**    | take the remainder of the existing value divided by a number and assign the result |
| **^=**    | raise the existing value to a power and assign the result |

## Data Types

### 1. Variables

#### a. String

`String` — used for storing text, enclosed in double quotes: `"hello"`

#### b. Char

`Char` — a single Unicode character, enclosed in single quotes: `'a'`

#### c. Numbers

| Type       | Description |
|:----------:|:------------|
| `Int8`     | positive or negative integers from -2^7 to (2^7)-1 |
| `Int16`    | positive or negative integers from -2^15 to (2^15)-1 |
| `Int32`    | positive or negative integers from -2^31 to (2^31)-1 |
| `Int64`    | positive or negative integers from -2^63 to (2^63)-1 (default) |
| `Int128`   | positive or negative integers from -2^127 to (2^127)-1 |
| `UInt8`    | positive integers from 0 to (2^8)-1 |
| `UInt16`   | positive integers from 0 to (2^16)-1 |
| `UInt32`   | positive integers from 0 to (2^32)-1 |
| `UInt64`   | positive integers from 0 to (2^64)-1 |
| `UInt128`  | positive integers from 0 to (2^128)-1 |
| `Float16`  | 16-bit floating point |
| `Float32`  | 32-bit floating point |
| `Float64`  | 64-bit floating point (default) |
| `BigInt`   | arbitrary precision integer |
| `BigFloat` | arbitrary precision floating point |
| `Complex{T}` | complex number with real and imaginary parts of type T |
| `Rational{T}` | exact rational number as numerator/denominator of type T |

### 2. Bool

`Bool` — values of `true` or `false`

### 3. Symbol

`Symbol` — immutable interned string identifier, e.g. `:name`

### 4. Arrays / Vectors

- `Vector{T}` — 1-dimensional array (1-indexed)
- `Matrix{T}` — 2-dimensional array
- `Array{T,N}` — N-dimensional array

### 5. Tuples

Immutable ordered collections — `(1, "two", 3.0)`

### 6. Named Tuples

`(name="Alice", age=30)`

### 7. Dictionaries

`Dict{K,V}()` — key/value pairs

### 8. Sets

`Set{T}()` — unique unordered elements

### 9. Ranges

`1:10`, `1:2:10`, `range(start, stop, length)`

## Functions

- **Range**: `1:n` or `range(start, stop; length=n)` — used in for loops and array indexing
- **Date and Time**: `Dates.now()`, `Dates.format()`, `Dates.DateTime` — produces date and time values
- **Multiple dispatch**: Julia functions can have multiple methods selected by argument types

## Statements

A statement is an instruction that a program can execute. They are usually made line by line in your coding file. Lines in your code can have multiple statements that are separated by semicolons.

### Conditional Statements

| Statement          | Description |
|:------------------:|:------------|
| **if**             | performs a statement if a condition is met |
| **if-else**        | performs a statement if a condition is met, otherwise performs the default statement |
| **if-elseif-else** | chains multiple conditions with `elseif` branches |

### Iterative Statements

| Statement  | Description |
|:----------:|:------------|
| **for**    | loop statement over a defined range or collection |
| **for-in** | loop over each element: `for x in collection` |
| **while**  | indefinite loop that continues while a condition is true |
| **break**  | exits the innermost loop immediately |
| **continue** | skips to the next iteration of the loop |

### Switch-like Statements

Julia has no `switch` keyword; use `if-elseif-else` chains or dispatch on types.

### Exception Handling

| Statement        | Description |
|:----------------:|:------------|
| **try-catch**    | catches exceptions thrown by `error()` or `throw()` |
| **try-finally**  | runs cleanup code regardless of whether an error occurred |
| **error(msg)**   | throws an `ErrorException` (equivalent to Go's `panic`) |

## File Input and Output

### 1. File Input

- `read(filename, String)` — read entire file as a string
- `open(filename) do f ... end` — open file with automatic close
- `eachline(filename)` — iterate over lines
- JSON: `JSON3.jl` package
- XML: `LightXML.jl` package

### 2. File Output

- `write(filename, content)` — write bytes or string
- `open(filename, "w") do f ... end` — write with automatic close
- `println(f, str)` — write a line to an open file handle

## Attribution

This project is adapted in part from **[Go by Example](https://github.com/mmcgrana/gobyexample)**
by [Mark McGranaghan](https://github.com/mmcgrana), licensed under the
[Creative Commons Attribution 3.0 Unported License](http://creativecommons.org/licenses/by/3.0/).

This project exists as a platform for multi-language comparative study of
syntax, language simplicity, lines of code required, and compile/run
performance. Attribution for Go by Example derived content is provided
centrally in this README and the NOTICE file — no per-file attribution
footer is added to individual lesson files.

## License

This repository contains two tiers of content:

| Content | License |
| --- | --- |
| Lesson files and code examples adapted from *Go by Example* | [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/) — see NOTICE |
| Original contributions by Jon Marcum (project structure, README, comparative study additions) | [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/) — see LICENSE |

The root `LICENSE` file (CC0) applies to Jon Marcum's original contributions.
The `NOTICE` file clarifies that CC BY 3.0 governs all content adapted from *Go by Example*.
