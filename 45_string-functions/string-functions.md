Julia's string functions use similar names to Go's `strings` package. `split` returns `SubString` which is converted to `String` for consistent output formatting.

___

##### Run Command:
`julia string-functions.jl`

##### Results:
`Contains:  true`
`Count:     2`
`HasPrefix: true`
`HasSuffix: true`
`Index:     1`
`Join:      a-b`
`Repeat:    aaaaa`
`Replace:   f00`
`Replace:   f0o`
`Split:     ["a", "b", "c", "d", "e"]`
`ToLower:   test`
`ToUpper:   TEST`
`Len: 5`
`Char: 101`
