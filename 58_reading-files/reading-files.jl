dat = read("./tmp/dat.txt", String)
print(dat)

f = open("./tmp/dat.txt", "r")

b1 = read(f, 5)
println("$(length(b1)) bytes: $(String(b1))")

seek(f, 6)
b2 = read(f, 2)
println("$(length(b2)) bytes @ 6: $(String(b2))")

seek(f, 6)
b3 = read(f, 2)
println("$(length(b3)) bytes @ 6: $(String(b3))")

seek(f, 0)

b4 = read(f, 5)
println("5 bytes: $(String(b4))")

close(f)
