Julia uses `mkdir`, `readdir`, and `walkdir` instead of Go's `os.Mkdir` and `filepath.Walk`.

___

##### Run Command:
`julia directories.jl`

##### Results:
`Listing subdir/parent`
`  child true`
`  file2 false`
`  file3 false`
`Listing subdir/parent/child`
`  file4 false`
`Visiting subdir`
`  subdir true`
`  subdir\file1 false`
`  subdir\parent true`
`  subdir\parent\file2 false`
`  subdir\parent\file3 false`
`  subdir\parent\child true`
`  subdir\parent\child\file4 false`
