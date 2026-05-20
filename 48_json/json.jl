import Pkg
Pkg.activate(; temp=true)
Pkg.add("JSON3"; io=devnull)

using JSON3

println(JSON3.write(true))
println(JSON3.write(1))
println(JSON3.write(2.34))
println(JSON3.write("vector"))

slcD = ["apple", "peach", "pear"]
println(JSON3.write(slcD))

mapD = Dict("apple" => 5, "lettuce" => 7)
println(JSON3.write(mapD))

struct Response1
    Page::Int
    Fruits::Vector{String}
end

struct Response2
    page::Int
    fruits::Vector{String}
end

res1D = Response1(1, ["apple", "peach", "pear"])
println(JSON3.write(res1D))

res2D = Response2(1, ["apple", "peach", "pear"])
println(JSON3.write(res2D))

byt = """{"num":6.13,"strs":["a","b"]}"""
dat = JSON3.read(byt)
println(dat)

num = dat["num"]
println(num)

str1 = dat["strs"][1]
println(str1)

str_json = """{"page": 1, "fruits": ["apple", "peach"]}"""
res = JSON3.read(str_json, Response2)
println(res)
println(res.fruits[1])

d = Dict("apple" => 5, "lettuce" => 7)
println(JSON3.write(d))
