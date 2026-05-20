Julia uses `@info` macros and a custom JSON logger instead of Go's `slog`. Timestamps vary by run.

___

##### Run Command:
`julia logging.jl`

##### Results:
`[ Info: standard logger`
`[ Info: with micro`
`{"time":"2026-05-19T23:27:36.000000000Z","level":"INFO","msg":"hi there"}`
`{"time":"2026-05-19T23:27:36.000000000Z","level":"INFO","msg":"hello again","key":"val","age":25}`
`from buflog:buf:2026/05/19 23:27:36 hello`
