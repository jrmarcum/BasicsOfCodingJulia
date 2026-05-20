Julia uses `parse(Type, str)` for number parsing. Hex strings with `0x` prefix are parsed automatically without specifying `base=16`.

___

##### Run Command:
`julia number-parsing.jl`

##### Results:
`1.234`
`123`
`456`
`789`
`135`
`invalid base 10 digit 'w' in "wat"`
