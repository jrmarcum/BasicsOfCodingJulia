mutable struct Container
    mu::ReentrantLock
    counters::Dict{String, Int}
end

function inc!(c::Container, name::String)
    lock(c.mu) do
        c.counters[name] += 1
    end
end

c = Container(ReentrantLock(), Dict("a" => 0, "b" => 0))

function do_increment(name, n)
    for _ in 1:n
        inc!(c, name)
    end
end

t1 = Threads.@spawn do_increment("a", 10000)
t2 = Threads.@spawn do_increment("a", 10000)
t3 = Threads.@spawn do_increment("b", 10000)

wait(t1); wait(t2); wait(t3)

println(sort(collect(c.counters)))
