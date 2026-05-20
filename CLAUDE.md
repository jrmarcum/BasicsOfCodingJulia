# BasicsOfCodingJulia — Session Context

## What This Project Is

A multi-language comparative study of programming syntax, simplicity, lines
of code, and performance. Each language implements the same 78 example
programs so they can be compared side-by-side.

The source of truth for program logic and expected output is **Basics of
Coding Go** by Jon Marcum (https://github.com/jrmarcum/BasicsOfCodingGo),
which lives as a git submodule at `upstream/basicsofcodinggo`. For every
lesson, read the upstream `.go` source and `.md` to understand what the
program does and what output it produces, then translate to idiomatic Julia.

The structural reference is **BasicsOfCodingC**
(https://github.com/jrmarcum/BasicsOfCodingC). Match its repo layout,
CLAUDE.md shape, NOTICE/LICENSE structure, and lesson `.md` format exactly.

## Project Structure

```
BasicsOfCodingJulia/
├── CLAUDE.md
├── LICENSE            — CC0 (Jon Marcum original contributions)
├── NOTICE             — CC BY 3.0 attribution for derived lesson content
├── README.md
├── upstream/
│   └── basicsofcodinggo/  — git submodule
└── ##_topic-name/
    ├── topic-name.jl
    └── topic-name.md
```

All 78 lessons: `01_hello-world` through `78_sha256-hashes`.
Numbers match BasicsOfCodingGo exactly — do not renumber.

## Lesson .md Format (exact, no deviations)

```
[Optional one-line description]

___

##### Run Command:
`[run command]`

##### Results:
`[output line 1]`
`[output line 2]`
```

No per-file attribution footers. Time-dependent or nondeterministic
lessons note this in the description line.

## Licensing Rule

Do NOT add per-file attribution footers. Attribution is handled centrally
in README and NOTICE. This is intentional and differs from some other repos.

## Output Matching

Match upstream Go output line-for-line. Where the language produces
structurally different output (e.g., map ordering, array formatting),
document the difference in the lesson `.md` description line.

## Special Lessons

- **58–60** (reading/writing files, line-filters): require a `tmp/`
  directory at runtime (gitignored, create manually). Lesson 58 also needs
  `tmp/dat.txt` containing `hello\njulia\n`.
- **50–52, 32, 37**: time-dependent output — note in `.md` that results vary.
- **27–37** (concurrency): nondeterministic per-thread ordering — note in `.md`.
- **64–66** (command-line args/flags/subcommands): Julia is interpreted;
  pass args directly: `julia script.jl -- arg1 arg2` or `julia script.jl --flag=val`.
- **68** (testing-and-benchmarking): uses Julia's `Test` stdlib with `@testset`/`@test`.
- **69–72** (HTTP client/server, context, TCP server): server lessons run
  indefinitely; test with `curl` or `nc` in a separate terminal.

---

## Language-Specific Reference

### JULIA

**Tested with:** Julia 1.12.2

**Toolchain:**
```
julia filename.jl
```

**Key translations:**
| Go | Julia |
|---|---|
| `fmt.Println` | `println()` — note: does NOT add spaces between args like Go |
| `fmt.Printf` | `@printf` (needs `using Printf`) / `"$(expr)"` interpolation |
| Slices | `Vector{T}` **(1-indexed!)** |
| Maps | `Dict{K,V}()` |
| Multiple return | `return a, b` / `a, b = func()` |
| Closures | `x -> x * 2` |
| Interfaces | Abstract types + multiple dispatch |
| `defer` | `try-finally` |
| goroutines | `Threads.@spawn` |
| channels | `Channel{T}(capacity)` |
| `sync.WaitGroup` | `fetch(task)` per spawned task |
| `sync.Mutex` | `ReentrantLock()` |
| `sync/atomic` | `Threads.Atomic{T}()` + `Threads.atomic_add!` |
| `error` / `panic` | `error("msg")` / `throw(ex)` — unhandled prints stack trace to stderr |
| `regexp` | `r"pattern"` / `match` / `eachmatch` |
| `net/http` | `HTTP.jl` package |
| SHA1/SHA256 | `SHA.sha1` / `SHA.sha256` (SHA.jl stdlib) |
| Base64 | `base64encode` / `base64decode` (Base64 stdlib) |
| `os.Exit` | `ccall(:_exit, Cvoid, (Cint,), code)` — skips `atexit` handlers |
| Pointers | `Ref{T}` — `Ref(val)`, `ref[]` to get/set |

**Known Julia gotchas:**

- `println()` does NOT add spaces between multiple arguments (unlike Go's `fmt.Println`).
  Add trailing spaces to label strings: `println("label: ", val)`.
- While loops in scripts use **soft scope** — variables assigned inside a `while` in
  global scope need `global` declaration or a `let` block wrapper.
- Functions must be defined before use in scripts (unlike the REPL).
- `split()` returns `SubString{String}[]`; wrap with `String.()` for clean printing.
- Julia's `Printf` does not support `%b` (binary), `%t` (bool), or `%q` formats.
  Use `string(n, base=2)` for binary, `repr(str)` for quoted strings.
- `mktemp()` returns `(path::String, io::IOStream)` — path first, io second.
- `dateformat"zzz"` is not supported for timezone parsing; strip timezone from
  strings and append manually, or use `Dates.format` with string concatenation.
- Arrays are 1-indexed — subtract 1 when reporting 0-based offsets to match Go output.
- `match` offsets (`m.offset`, `m.offsets[i]`) are 1-based absolute byte positions.

**External packages used** (installed via temp environment inside each lesson file):

| Lesson | Package | Purpose |
|--------|---------|---------|
| 48 | `JSON3` | JSON encoding/decoding |
| 49 | `LightXML` | XML encoding/decoding |
| 55 | `URIs` | URL parsing |
| 69–71 | `HTTP` | HTTP client and server |

Each lesson that needs a package uses the pattern:

```julia
import Pkg
Pkg.activate(; temp=true)
Pkg.add("PackageName"; io=devnull)
using PackageName
```

**Platform notes:**

- Lessons 74 and 75 (execing/spawning processes) use `cmd /c dir` and `findstr`
  on Windows instead of `ls` and `grep`. The `.jl` files detect `Sys.iswindows()`
  and branch accordingly.
- Lesson 60 (line-filters): pipe input with `printf "hello\nworld\n" | julia line-filters.jl`
  on Unix, or use bash on Windows to avoid PowerShell BOM issues.

**Notes:** Arrays are 1-indexed — adjust all indexing.
`JULIA_NUM_THREADS` must be > 1 for concurrency lessons; note in `.md`.

**Project status:** All 78 lessons implemented (`.jl` + `.md` present for each).

**.gitignore:** `Manifest.toml`, `*.ji`, `.julia/`, `tmp/`
