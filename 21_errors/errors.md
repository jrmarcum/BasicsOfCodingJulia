Julia uses `error()` and `try-catch` instead of Go's multiple return value error pattern. Custom error types use structs with exception fields.

___

##### Run Command:
`julia errors.jl`

##### Results:
`f1 worked: 10`
`f1 failed: can't work with 42`
`f2 worked: 10`
`f2 failed: 42 - can't work with it`
`42`
`can't work with it`
