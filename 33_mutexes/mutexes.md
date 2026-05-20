Julia uses `ReentrantLock()` and `lock`/`unlock` instead of `sync.Mutex`. Dict prints as `Dict(k => v)` rather than Go's `map[k:v]`.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia mutexes.jl`

##### Results:
`["a" => 20000, "b" => 10000]`
