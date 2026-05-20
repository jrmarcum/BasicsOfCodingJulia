Julia uses `joinpath`, `dirname`, `basename`, `splitext`, and `relpath` from Base. On Windows, path separators are backslashes rather than forward slashes.

___

##### Run Command:
`julia file-paths.jl`

##### Results:
`p: dir1\dir2\filename`
`dir1\filename`
`dir1\filename`
`Dir(p): dir1\dir2`
`Base(p): filename`
`false`
`true`
`.json`
`config`
`t\file`
`..\c\t\file`
