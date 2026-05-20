Julia uses `Ref{T}` for mutable references instead of C-style pointers. `Ref` prints as `Base.RefValue{T}(value)` rather than a memory address.

___

##### Run Command:
`julia pointers.jl`

##### Results:
`initial: 1`
`zeroval: 1`
`zeroptr: 0`
`pointer: Base.RefValue{Int64}(0)`
