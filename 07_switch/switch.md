Julia uses `if-elseif-else` for switch-like dispatch; `isa()` replaces type switches. The weekday/time lines vary by when the program runs. `typeof()` returns `String` (capitalized) instead of Go's `string`.

___

##### Run Command:
`julia switch.jl`

##### Results:
`Write 2 as two`
`It's the weekend`
`It's before noon`
`I'm a bool`
`I'm an int`
`Don't know type String`
