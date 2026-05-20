Julia uses `timedwait` for channel timeouts instead of Go's `select` with `time.After`.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia timeouts.jl`

##### Results:
`timeout 1`
`result 2`
