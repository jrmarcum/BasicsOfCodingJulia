Julia structs print as `TypeName(field1, field2)` instead of Go's `{field1 field2}`. Julia has no pointer syntax; mutable structs are passed by reference automatically.

___

##### Run Command:
`julia structs.jl`

##### Results:
`Person("Bob", 20)`
`Person("Alice", 30)`
`Person("Fred", 0)`
`Person("Ann", 42)`
`Person("Jon", 42)`
`Sean`
`50`
`51`
