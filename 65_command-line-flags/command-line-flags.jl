word = "foo"
numb = 42
fork = false
svar = "bar"
tail = String[]

i = 1
while i <= length(ARGS)
    arg = ARGS[i]
    if arg == "--"
        append!(tail, ARGS[i+1:end])
        break
    elseif arg == "--word" && i < length(ARGS)
        global word = ARGS[i+1]; i += 1
    elseif startswith(arg, "--word=")
        global word = arg[8:end]
    elseif arg == "--numb" && i < length(ARGS)
        global numb = parse(Int, ARGS[i+1]); i += 1
    elseif startswith(arg, "--numb=")
        global numb = parse(Int, arg[8:end])
    elseif arg == "--fork"
        global fork = true
    elseif arg == "--svar" && i < length(ARGS)
        global svar = ARGS[i+1]; i += 1
    elseif startswith(arg, "--svar=")
        global svar = arg[8:end]
    else
        push!(tail, arg)
    end
    global i += 1
end

println("word:", word)
println("numb:", numb)
println("fork:", fork)
println("svar:", svar)
println("tail:", tail)
