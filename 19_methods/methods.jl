struct Rect
    width::Int
    height::Int
end

area(r::Rect) = r.width * r.height
perim(r::Rect) = 2 * r.width + 2 * r.height

r = Rect(10, 5)

println("area:  ", area(r))
println("perim: ", perim(r))

rp = r
println("area:  ", area(rp))
println("perim: ", perim(rp))
