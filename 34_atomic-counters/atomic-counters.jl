ops = Threads.Atomic{Int64}(0)

tasks = []
for _ in 1:50
    t = Threads.@spawn begin
        for _ in 1:1000
            Threads.atomic_add!(ops, 1)
        end
    end
    push!(tasks, t)
end

for t in tasks
    wait(t)
end

println("ops:", ops[])
