if length(ARGS) < 1
    println("expected 'foo' or 'bar' subcommands")
    exit(1)
end

function parse_foo_flags(args)
    enable = false
    name = ""
    tail = String[]
    i = 1
    while i <= length(args)
        if args[i] == "--enable"
            enable = true
        elseif args[i] == "--name" && i < length(args)
            name = args[i+1]; i += 1
        elseif startswith(args[i], "--name=")
            name = args[i][8:end]
        else
            push!(tail, args[i])
        end
        i += 1
    end
    return enable, name, tail
end

function parse_bar_flags(args)
    level = 0
    tail = String[]
    i = 1
    while i <= length(args)
        if args[i] == "--level" && i < length(args)
            level = parse(Int, args[i+1]); i += 1
        elseif startswith(args[i], "--level=")
            level = parse(Int, args[i][9:end])
        else
            push!(tail, args[i])
        end
        i += 1
    end
    return level, tail
end

subcmd = ARGS[1]
if subcmd == "foo"
    enable, name, tail = parse_foo_flags(ARGS[2:end])
    println("subcommand 'foo'")
    println("  enable:", enable)
    println("  name:", name)
    println("  tail:", tail)
elseif subcmd == "bar"
    level, tail = parse_bar_flags(ARGS[2:end])
    println("subcommand 'bar'")
    println("  level:", level)
    println("  tail:", tail)
else
    println("expected 'foo' or 'bar' subcommands")
    exit(1)
end
