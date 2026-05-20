a = zeros(Int, 5)
println("emp: ", a)

a[5] = 100
println("set: ", a)
println("get: ", a[5])

println("len: ", length(a))

b = [1, 2, 3, 4, 5]
println("dcl: ", b)

twoD = zeros(Int, 2, 3)
for i in 1:2
    for j in 1:3
        twoD[i, j] = (i - 1) + (j - 1)
    end
end
println("2d:  ", twoD)
