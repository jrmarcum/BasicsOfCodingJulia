using SHA

s = "sha256 this string"

bs = sha256(s)

println(s)
println(bytes2hex(bs))
