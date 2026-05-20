Julia uses a `Channel` with `@async` to simulate Go's `time.NewTicker`. Tick timestamps vary by run.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia tickers.jl`

##### Results:
`Tick at 2026-05-19T23:26:47.770`
`Tick at 2026-05-19T23:26:48.444`
`Ticker stopped`
