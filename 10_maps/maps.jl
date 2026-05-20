m = Dict{String, Int}()

m["k1"] = 7
m["k2"] = 13

println("map: ", m)

v1 = m["k1"]
println("v1:  ", v1)

println("len: ", length(m))

delete!(m, "k2")
println("map: ", m)

prs = haskey(m, "k2")
println("prs: ", prs)

n = Dict("foo" => 1, "bar" => 2)
println("map: ", n)
