Julia uses `timedwait` and non-blocking channel checks instead of Go's `select` statement.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia select.jl`

##### Results:
`received one`
`received two`
