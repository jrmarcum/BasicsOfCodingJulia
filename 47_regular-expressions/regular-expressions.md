Julia uses `r"pattern"` regex literals and `match`/`eachmatch`. Match indices are 1-based; subtract 1 for Go-compatible 0-based output.

___

##### Run Command:
`julia regular-expressions.jl`

##### Results:
`true`
`true`
`peach`
`[0, 5]`
`["peach", "ea"]`
`[0, 5, 1, 3]`
`["peach", "punch", "pinch"]`
`[[0, 5, 1, 3], [6, 11, 7, 9], [12, 17, 13, 15]]`
`["peach", "punch"]`
`true`
`p([a-z]+)ch`
`a <fruit>`
`a PEACH`
