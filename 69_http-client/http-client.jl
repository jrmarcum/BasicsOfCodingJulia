import Pkg
Pkg.activate(; temp=true)
Pkg.add("HTTP"; io=devnull)

using HTTP

resp = HTTP.get("https://gobyexample.com")

println("Response status:", resp.status)

lines = split(String(resp.body), "\n")
for i in 1:min(5, length(lines))
    println(lines[i])
end
