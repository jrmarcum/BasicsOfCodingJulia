mkdir("subdir")

function createEmptyFile(name)
    open(name, "w") do f end
end

createEmptyFile("subdir/file1")

mkpath("subdir/parent/child")

createEmptyFile("subdir/parent/file2")
createEmptyFile("subdir/parent/file3")
createEmptyFile("subdir/parent/child/file4")

entries = readdir("subdir/parent")
println("Listing subdir/parent")
for entry in entries
    isdir_flag = isdir(joinpath("subdir/parent", entry))
    println("  $entry $isdir_flag")
end

cd("subdir/parent/child")

entries2 = readdir(".")
println("Listing subdir/parent/child")
for entry in entries2
    println("  $entry $(isdir(entry))")
end

cd("../../..")

println("Visiting subdir")
for (root, dirs, files) in walkdir("subdir")
    println("  $root $(isdir(root))")
    for file in files
        println("  $(joinpath(root, file)) false")
    end
end

rm("subdir"; recursive=true)
