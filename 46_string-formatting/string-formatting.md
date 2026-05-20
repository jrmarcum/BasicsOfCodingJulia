Julia's `Printf` does not support `%b` (binary) or `%t` (boolean) format specifiers; `string(n, base=2)` and `string(bool)` are used instead. Structs print as `TypeName(fields)` not `{fields}`.

___

##### Run Command:
`julia string-formatting.jl`

##### Results:
`an error`
`Point(1, 2)`
`x=1 y=2`
`Point(x=1, y=2)`
`Point`
`true`
`123`
`1110`
`!`
`1c8`
`78.900000`
`1.234000e+08`
`1.234000E+08`
`"string"`
`"\"string\""`
`6865782074686973`
`|    12|   345|`
`|  1.20|  3.45|`
`|1.20  |3.45  |`
`|   foo|     b|`
`|foo   |b     |`
`a string`
