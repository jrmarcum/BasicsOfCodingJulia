Julia uses `fetch()` on spawned tasks instead of `sync.WaitGroup`. Worker start/done order varies between runs.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia waitgroups.jl`

##### Results:
`Worker 4 starting`
`Worker 1 starting`
`Worker 2 starting`
`Worker 5 starting`
`Worker 3 starting`
`Worker 1 done`
`Worker 3 done`
`Worker 4 done`
`Worker 2 done`
`Worker 5 done`
