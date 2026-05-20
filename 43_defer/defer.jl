function createFile(p)
    println("creating")
    return open(p, "w")
end

function writeFile(f)
    println("writing")
    println(f, "data")
end

function closeFile(f)
    println("closing")
    close(f)
end

mkpath("./tmp")
f = createFile("./tmp/defer.txt")
try
    writeFile(f)
finally
    closeFile(f)
end
