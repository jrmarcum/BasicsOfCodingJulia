function index_of(vs, t)
    for (i, v) in enumerate(vs)
        if v == t
            return i - 1
        end
    end
    return -1
end

function includes(vs, t)
    return index_of(vs, t) >= 0
end

function any_match(vs, f)
    for v in vs
        if f(v)
            return true
        end
    end
    return false
end

function all_match(vs, f)
    for v in vs
        if !f(v)
            return false
        end
    end
    return true
end

function filter_vs(vs, f)
    return [v for v in vs if f(v)]
end

function map_vs(vs, f)
    return [f(v) for v in vs]
end

strs = ["peach", "apple", "pear", "plum"]

println(index_of(strs, "pear"))
println(includes(strs, "grape"))
println(any_match(strs, v -> startswith(v, "p")))
println(all_match(strs, v -> startswith(v, "p")))
println(filter_vs(strs, v -> occursin("e", v)))
println(map_vs(strs, uppercase))
