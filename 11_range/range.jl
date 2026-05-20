nums = [2, 3, 4]
sum_val = 0
for num in nums
    global sum_val
    sum_val += num
end
println("sum: ", sum_val)

for (i, num) in enumerate(nums)
    if num == 3
        println("index: ", i - 1)
    end
end

kvs = Dict("a" => "apple", "b" => "banana")
for k in sort(collect(keys(kvs)))
    println("$k -> $(kvs[k])")
end

for k in sort(collect(keys(kvs)))
    println("key: $k")
end

for (i, c) in enumerate("go")
    println(i - 1, " ", Int(c))
end
