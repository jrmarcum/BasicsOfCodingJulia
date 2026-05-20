using Printf

const s = "constant"
println(s)

const n = 500_000_000
const d = 3e20 / n
@printf "%g\n" d

println(Int64(d))
println(sin(n))
