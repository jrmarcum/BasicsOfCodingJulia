Julia uses the JSON3.jl package for JSON encoding/decoding. Structs encode to JSON using `JSON3.write`. Requires `JSON3` package.

___

##### Run Command:
`julia json.jl`

##### Results:
`true`
`1`
`2.34`
`"vector"`
`["apple","peach","pear"]`
`{"lettuce":7,"apple":5}`
`{"Page":1,"Fruits":["apple","peach","pear"]}`
`{"page":1,"fruits":["apple","peach","pear"]}`
`{`
`    "num": 6.13,`
`   "strs": [`
`             "a",`
`             "b"`
`           ]`
`}`
`6.13`
`a`
`Response2(1, ["apple", "peach"])`
`apple`
`{"lettuce":7,"apple":5}`
