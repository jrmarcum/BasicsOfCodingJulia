using SHA

s = "sha1 this string"

bs = sha1(s)

println(s)
println(bytes2hex(bs))
