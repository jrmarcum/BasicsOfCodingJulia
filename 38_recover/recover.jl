function mayPanic()
    error("a problem")
end

try
    mayPanic()
    println("After mayPanic()")
catch e
    println("Recovered. Error:\n ", e.msg)
end
