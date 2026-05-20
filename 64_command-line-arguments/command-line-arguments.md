Julia accesses command-line arguments via `ARGS`. The script path is not included in `ARGS` (unlike Go's `os.Args[0]`); to match Go output, `@__FILE__` is used.

___

##### Run Command:
`julia command-line-arguments.jl -- a b c`

##### Results:
`["64_command-line-arguments\\command-line-arguments.jl", "--", "a", "b", "c"]`
`["--", "a", "b", "c"]`
`b`
