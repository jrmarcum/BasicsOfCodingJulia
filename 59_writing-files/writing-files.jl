mkpath("./tmp")

d1 = "hello\njulia\n"
write("./tmp/dat1.txt", d1)

f = open("./tmp/dat2.txt", "w")

d2 = UInt8[115, 111, 109, 101, 10]
n2 = write(f, d2)
println("wrote $n2 bytes")

n3 = write(f, "writes\n")
println("wrote $n3 bytes")

flush(f)

n4 = write(f, "buffered\n")
println("wrote $n4 bytes")

flush(f)
close(f)
