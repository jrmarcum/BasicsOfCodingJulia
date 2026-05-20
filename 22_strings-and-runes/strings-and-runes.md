Julia strings are UTF-8 sequences; `sizeof` returns byte length, `length` returns character count. `eachindex` yields byte offsets (1-based); subtract 1 to match Go's 0-based output.

___

##### Run Command:
`julia strings-and-runes.jl`

##### Results:
`Len: 18`
`e0 b8 aa e0 b8 a7 e0 b8 b1 e0 b8 aa e0 b8 94 e0 b8 b5 `
`Rune count: 6`
`U+0E2A 'ส' starts at 0`
`U+0E27 'ว' starts at 3`
`U+0E31 'ั' starts at 6`
`U+0E2A 'ส' starts at 9`
`U+0E14 'ด' starts at 12`
`U+0E35 'ี' starts at 15`
``
`Using DecodeRuneInString`
`U+0E2A 'ส' starts at 0`
`found so sua`
`U+0E27 'ว' starts at 3`
`U+0E31 'ั' starts at 6`
`U+0E2A 'ส' starts at 9`
`found so sua`
`U+0E14 'ด' starts at 12`
`U+0E35 'ี' starts at 15`
