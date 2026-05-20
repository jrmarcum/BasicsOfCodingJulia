Requires a `tmp/` directory before running. Julia uses `open` with mode flags and `write`/`println` instead of Go's `os.WriteFile` and `bufio.NewWriter`.

___

##### Run Command:
`julia writing-files.jl`

##### Results:
`wrote 5 bytes`
`wrote 7 bytes`
`wrote 9 bytes`
