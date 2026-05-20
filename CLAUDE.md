# BasicsOfCoding[LANGUAGE] — Session Context

## What This Project Is

A multi-language comparative study of programming syntax, simplicity, lines
of code, and performance. Each language implements the same 78 example
programs so they can be compared side-by-side.

The source of truth for program logic and expected output is **Basics of
Coding Go** by Jon Marcum (https://github.com/jrmarcum/BasicsOfCodingGo),
which lives as a git submodule at `upstream/basicsofcodinggo`. For every
lesson, read the upstream `.go` source and `.md` to understand what the
program does and what output it produces, then translate to idiomatic
[LANGUAGE].

The structural reference is **BasicsOfCodingC**
(https://github.com/jrmarcum/BasicsOfCodingC). Match its repo layout,
CLAUDE.md shape, NOTICE/LICENSE structure, and lesson `.md` format exactly.

## Project Structure

```
BasicsOfCoding[LANGUAGE]/
├── CLAUDE.md
├── LICENSE            — CC0 (Jon Marcum original contributions)
├── NOTICE             — CC BY 3.0 attribution for derived lesson content
├── README.md
├── upstream/
│   └── basicsofcodinggo/  — git submodule
└── ##_topic-name/
    ├── topic-name.[ext]
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
  `tmp/dat.txt` containing `hello\n[lang]\n`.
- **50–52, 32, 37**: time-dependent output — note in `.md` that results vary.
- **27–37** (concurrency): nondeterministic per-thread ordering — note in `.md`.
- **64–66** (command-line args/flags/subcommands): must be compiled to a
  binary before running; args passed after `--` separator or equivalent.
- **68** (testing-and-benchmarking): use the language's native test framework.

---

## Language-Specific Reference

### JULIA

**Toolchain:**
```
$ julia filename.jl
```

**Key translations:**
| Go | Julia |
|---|---|
| `fmt.Println` | `println()` |
| `fmt.Printf` | `@printf` / `"$(expr)"` interpolation |
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
| `sync/atomic` | `Threads.Atomic{T}()` + `atomic_add!` |
| `error` | `error("msg")` / `try-catch` |
| `regexp` | `r"pattern"` / `match` / `eachmatch` |
| `net/http` | `HTTP.jl` package |
| SHA1/SHA256 | `SHA.sha256` (SHA.jl stdlib) |
| Base64 | `base64encode` (Base64 stdlib) |

**Notes:** Arrays are 1-indexed — adjust all indexing. Use `OrderedDict`
(DataStructures.jl) for maps where output order must match upstream.
`JULIA_NUM_THREADS` must be > 1 for concurrency lessons; note in `.md`.

**.gitignore:** `Manifest.toml`, `*.ji`, `.julia/`, `tmp/`