f = parse(Float64, "1.234")
println(f)

i = parse(Int64, "123")
println(i)

d = parse(Int64, "0x1c8")
println(d)

u = parse(UInt64, "789")
println(u)

k = parse(Int, "135")
println(k)

try
    parse(Int, "wat")
catch e
    println(e.msg)
end
