using Random

print(rand(0:99), ",")
print(rand(0:99))
println()

println(rand())

print((rand() * 5) + 5, ",")
print((rand() * 5) + 5)
println()

rng1 = MersenneTwister(Int(time_ns()))
print(rand(rng1, 0:99), ",")
print(rand(rng1, 0:99))
println()

rng2 = MersenneTwister(42)
print(rand(rng2, 0:99), ",")
print(rand(rng2, 0:99))
println()

rng3 = MersenneTwister(42)
print(rand(rng3, 0:99), ",")
print(rand(rng3, 0:99))
