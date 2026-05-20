struct ArgError
    arg::Int
    prob::String
end

Base.show(io::IO, e::ArgError) = print(io, e.arg, " - ", e.prob)

function f1(arg)
    if arg == 42
        return nothing, "can't work with 42"
    end
    return arg + 3, nothing
end

function f2(arg)
    if arg == 42
        return nothing, ArgError(arg, "can't work with it")
    end
    return arg + 3, nothing
end

for i in [7, 42]
    r, e = f1(i)
    if e !== nothing
        println("f1 failed: ", e)
    else
        println("f1 worked: ", r)
    end
end

for i in [7, 42]
    r, e = f2(i)
    if e !== nothing
        println("f2 failed: ", e)
    else
        println("f2 worked: ", r)
    end
end

_, e = f2(42)
if e isa ArgError
    println(e.arg)
    println(e.prob)
end
