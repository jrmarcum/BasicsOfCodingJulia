strs = ["c", "a", "b"]
sort!(strs)
println("Strings: ", strs)

ints = [7, 2, 4]
sort!(ints)
println("Ints:    ", ints)

s = issorted(ints)
println("Sorted:  ", s)
