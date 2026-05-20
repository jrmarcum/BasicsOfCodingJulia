let i = 1
    while i <= 3
        println(i)
        i += 1
    end
end

for j in 7:9
    println(j)
end

while true
    println("loop")
    break
end

for n in 0:5
    if n % 2 == 0
        continue
    end
    println(n)
end
