function worker(id, jobs::Channel{Int}, results::Channel{Int})
    for j in jobs
        println("worker $id started  job $j")
        sleep(1)
        println("worker $id finished job $j")
        put!(results, j * 2)
    end
end

const numJobs = 5
jobs = Channel{Int}(numJobs)
results = Channel{Int}(numJobs)

for w in 1:3
    Threads.@spawn worker(w, jobs, results)
end

for j in 1:numJobs
    put!(jobs, j)
end
close(jobs)

for _ in 1:numJobs
    take!(results)
end
