Julia uses `Channel` and `Threads.@spawn` to implement worker pools. Job assignment order may vary between runs.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia worker-pools.jl`

##### Results:
`worker 2 started  job 3`
`worker 1 started  job 2`
`worker 3 started  job 1`
`worker 2 finished job 3`
`worker 3 finished job 1`
`worker 1 finished job 2`
`worker 2 started  job 4`
`worker 1 started  job 5`
`worker 1 finished job 5`
`worker 2 finished job 4`
