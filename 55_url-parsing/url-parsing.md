Julia uses the URIs.jl package for URL parsing. Query parameters parse into a `Dict` printed as `Dict("k" => "v")` rather than Go's `map[k:[v]]`.

___

##### Run Command:
`julia url-parsing.jl`

##### Results:
`postgres`
`user:pass`
`user`
`pass`
`host.com:5432`
`host.com`
`5432`
`/path`
`f`
`k=v`
`Dict("k" => "v")`
`v`
