Julia uses HTTP.jl for context-aware HTTP handlers. Context cancellation uses `try-catch` around a sleeping handler. Requires `HTTP` package.

___

##### Run Command:
`julia context.jl`

##### Results:
`[server runs on port 8090 until interrupted]`
