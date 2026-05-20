Julia implements subcommand dispatch manually via `ARGS[1]` dispatch instead of Go's `flag.NewFlagSet`.

___

##### Run Command:
`julia command-line-subcommands.jl foo --enable --name=joe a1 a2`

##### Results:
`subcommand 'foo'`
`  enable:true`
`  name:joe`
`  tail:["a1", "a2"]`
