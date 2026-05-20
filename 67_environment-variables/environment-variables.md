Julia uses `ENV` dict for environment variables instead of Go's `os.Getenv`. `keys(ENV)` lists all variables; output varies by system environment.

___

##### Run Command:
`julia environment-variables.jl`

##### Results:
`FOO:1`
`BAR:`
``
`[list of environment variable names, one per line]`
