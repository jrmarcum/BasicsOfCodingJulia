s = fill("", 3)
println("emp: ", s)

s[1] = "a"
s[2] = "b"
s[3] = "c"
println("set: ", s)
println("get: ", s[3])

println("len: ", length(s))

push!(s, "d")
push!(s, "e", "f")
println("apd: ", s)

c = copy(s)
println("cpy: ", c)

l = s[3:5]
println("sl1: ", l)

l = s[1:5]
println("sl2: ", l)

l = s[3:end]
println("sl3: ", l)

t = ["g", "h", "i"]
println("dcl: ", t)

twoD = [Vector{Int}() for _ in 1:3]
for i in 1:3
    innerLen = i
    twoD[i] = zeros(Int, innerLen)
    for j in 1:innerLen
        twoD[i][j] = (i - 1) + (j - 1)
    end
end
println("2d:  ", twoD)
