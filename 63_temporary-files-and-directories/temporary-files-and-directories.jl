fname, f = mktemp()
println("Temp file name: ", fname)

write(f, UInt8[1, 2, 3, 4])
close(f)
rm(fname)

dname = mktempdir()
println("Temp dir name: ", dname)

fpath = joinpath(dname, "file1")
write(fpath, UInt8[1, 2])

rm(dname; recursive=true)
