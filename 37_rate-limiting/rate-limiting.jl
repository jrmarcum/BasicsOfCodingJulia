using Dates

requests = Channel{Int}(5)
for i in 1:5
    put!(requests, i)
end
close(requests)

limiter = Timer(0.2; interval=0.2)

for req in requests
    wait(limiter)
    println("request $req $(now())")
end

bursty_limiter = Channel{DateTime}(3)
for _ in 1:3
    put!(bursty_limiter, now())
end

@async begin
    t = Timer(0.2; interval=0.2)
    while true
        try
            wait(t)
            put!(bursty_limiter, now())
        catch
            break
        end
    end
end

bursty_requests = Channel{Int}(5)
for i in 1:5
    put!(bursty_requests, i)
end
close(bursty_requests)

for req in bursty_requests
    take!(bursty_limiter)
    println("request $req $(now())")
end
