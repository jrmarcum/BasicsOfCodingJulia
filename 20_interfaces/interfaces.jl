abstract type Geometry end

struct Rect <: Geometry
    width::Float64
    height::Float64
end

struct Circle <: Geometry
    radius::Float64
end

area(r::Rect) = r.width * r.height
perim(r::Rect) = 2 * r.width + 2 * r.height

area(c::Circle) = π * c.radius^2
perim(c::Circle) = 2 * π * c.radius

function measure(g::Geometry)
    println(g)
    println(area(g))
    println(perim(g))
end

r = Rect(3, 4)
c = Circle(5)

measure(r)
measure(c)
