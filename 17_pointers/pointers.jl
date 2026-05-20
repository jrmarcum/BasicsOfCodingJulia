function zeroval(ival)
    ival = 0
end

function zeroptr(iptr::Ref{Int})
    iptr[] = 0
end

i = 1
println("initial: ", i)

zeroval(i)
println("zeroval: ", i)

iref = Ref(i)
zeroptr(iref)
println("zeroptr: ", iref[])

println("pointer: ", iref)
