Julia parses flags manually from `ARGS` instead of using Go's `flag` package. The tail tracks positional args not consumed as flags.

___

##### Run Command:
`julia command-line-flags.jl --word=opt --numb=7 --fork --svar=flag`

##### Results:
`word:opt`
`numb:7`
`fork:true`
`svar:flag`
`tail:String[]`
