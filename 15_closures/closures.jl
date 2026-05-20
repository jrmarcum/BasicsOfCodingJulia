function intSeq()
    i = 0
    return () -> begin
        i += 1
        i
    end
end

nextInt = intSeq()

println(nextInt())
println(nextInt())
println(nextInt())

newInts = intSeq()
println(newInts())
