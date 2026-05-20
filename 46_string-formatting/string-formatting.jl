using Printf

struct Point
    x::Int
    y::Int
end

p = Point(1, 2)

println(p)
println("x=$(p.x) y=$(p.y)")
println("Point(x=$(p.x), y=$(p.y))")
println(typeof(p))

println(true)
@printf "%d\n" 123
println(string(14, base=2))
@printf "%c\n" 33
@printf "%x\n" 456
@printf "%f\n" 78.9
@printf "%e\n" 123400000.0
@printf "%E\n" 123400000.0
@printf "%s\n" "\"string\""
println(repr("\"string\""))
println(bytes2hex(Vector{UInt8}("hex this")))

@printf "|%6d|%6d|\n" 12 345
@printf "|%6.2f|%6.2f|\n" 1.2 3.45
@printf "|%-6.2f|%-6.2f|\n" 1.2 3.45
@printf "|%6s|%6s|\n" "foo" "b"
@printf "|%-6s|%-6s|\n" "foo" "b"

s = "a " * "string"
println(s)

@printf(stderr, "an %s\n", "error")
