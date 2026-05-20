ENV["FOO"] = "1"
println("FOO:", ENV["FOO"])
println("BAR:", get(ENV, "BAR", ""))

println()
for (k, v) in ENV
    println(k)
end
