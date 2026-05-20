println(occursin(r"p([a-z]+)ch", "peach"))

r = r"p([a-z]+)ch"

println(occursin(r, "peach"))

m = match(r, "peach punch")
println(m.match)

m2 = match(r, "peach punch")
println([m2.offset - 1, m2.offset - 1 + length(m2.match)])

m3 = match(r, "peach punch")
println(String.([m3.match, m3.captures[1]]))

m4 = match(r, "peach punch")
s_off = m4.offset - 1
e_off = s_off + length(m4.match)
c_off = m4.offsets[1] - 1
c_end = c_off + length(m4.captures[1])
println([s_off, e_off, c_off, c_end])

println(String.([m.match for m in eachmatch(r, "peach punch pinch")]))

println([[m.offset - 1, m.offset - 1 + length(m.match),
          m.offsets[1] - 1,
          m.offsets[1] - 1 + length(m.captures[1])]
         for m in eachmatch(r, "peach punch pinch")])

println(String.([m.match for m in Iterators.take(eachmatch(r, "peach punch pinch"), 2)]))

println(occursin(r, "peach"))

println(r.pattern)

println(replace("a peach", r => "<fruit>"))

println(replace("a peach", r => m -> uppercase(m)))
