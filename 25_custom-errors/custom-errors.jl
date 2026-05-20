struct ArgError
    arg::Int
    message::String
end

function f(arg)
    if arg == 42
        return nothing, ArgError(arg, "can't work with it")
    end
    return arg + 3, nothing
end

_, err = f(42)
if err isa ArgError
    println(err.arg)
    println(err.message)
else
    println("err doesn't match ArgError")
end
