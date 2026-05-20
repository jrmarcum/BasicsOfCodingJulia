p = joinpath("dir1", "dir2", "filename")
println("p: ", p)

println(normpath(joinpath("dir1//", "filename")))
println(normpath(joinpath("dir1/../dir1", "filename")))

println("Dir(p): ", dirname(p))
println("Base(p): ", basename(p))

println(isabspath("dir/file"))
println(isabspath("/dir/file"))

filename = "config.json"

ext = splitext(filename)[2]
println(ext)

println(splitext(filename)[1])

rel1 = relpath("a/b/t/file", "a/b")
println(rel1)

rel2 = relpath("a/c/t/file", "a/b")
println(rel2)
