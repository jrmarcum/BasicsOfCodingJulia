Julia uses `Threads.@spawn` instead of goroutines. Requires `JULIA_NUM_THREADS > 1`; output order of threaded output may vary between runs.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia goroutines.jl`

##### Results:
`direct : 0`
`direct : 1`
`direct : 2`
`going`
`goroutine : 0`
`goroutine : 1`
`goroutine : 2`
`done`
