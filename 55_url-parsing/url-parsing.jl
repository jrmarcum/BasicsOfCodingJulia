import Pkg
Pkg.activate(; temp=true)
Pkg.add("URIs"; io=devnull)

using URIs

s = "postgres://user:pass@host.com:5432/path?k=v#f"

u = URI(s)

println(u.scheme)
println(u.userinfo)
println(split(u.userinfo, ":")[1])
println(split(u.userinfo, ":")[2])

println(u.host * (isempty(u.port) ? "" : ":" * u.port))
println(u.host)
println(u.port)

println(u.path)
println(u.fragment)

println(u.query)
qparams = queryparams(u)
println(qparams)
println(qparams["k"])
