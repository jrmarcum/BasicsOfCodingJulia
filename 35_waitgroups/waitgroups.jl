function worker(id)
    println("Worker $id starting")
    sleep(1)
    println("Worker $id done")
end

tasks = []
for i in 1:5
    t = Threads.@spawn worker(i)
    push!(tasks, t)
end

for t in tasks
    wait(t)
end
