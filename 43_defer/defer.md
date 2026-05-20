Julia uses `try-finally` instead of Go's `defer`. The `finally` block runs after the function body regardless of errors.

___

##### Run Command:
`julia defer.jl`

##### Results:
`creating`
`writing`
`closing`
