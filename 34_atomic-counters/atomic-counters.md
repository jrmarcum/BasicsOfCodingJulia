Julia uses `Threads.Atomic{T}()` and `Threads.atomic_add!` instead of Go's `sync/atomic`. Requires `JULIA_NUM_THREADS > 1`.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia atomic-counters.jl`

##### Results:
`ops:50000`
