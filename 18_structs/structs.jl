mutable struct Person
    name::String
    age::Int
end

function newPerson(name::String)
    p = Person(name, 42)
    return p
end

println(Person("Bob", 20))
println(Person("Alice", 30))
println(Person("Fred", 0))
println(newPerson("Ann"))
println(newPerson("Jon"))

s = Person("Sean", 50)
println(s.name)

sp = s
println(sp.age)

sp.age = 51
println(sp.age)
