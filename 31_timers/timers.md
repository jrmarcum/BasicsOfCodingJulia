Julia uses `Timer` and `sleep` instead of Go's `time.NewTimer`. Cancellation uses `close(timer)`.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia timers.jl`

##### Results:
`Timer 1 fired`
`Timer 2 stopped`
