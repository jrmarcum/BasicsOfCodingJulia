Julia uses `ccall(:_exit, Cvoid, (Cint,), code)` to exit immediately without running `atexit` handlers, equivalent to Go's `os.Exit`. Julia has no `exit!` built-in.

___

##### Run Command:
`julia exit.jl`

##### Results:
`[exits with status 3; atexit handler does not run]`
