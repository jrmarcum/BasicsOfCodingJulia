c1 = Channel{String}(0)
c2 = Channel{String}(0)

@async (sleep(1); put!(c1, "one"))
@async (sleep(2); put!(c2, "two"))

for _ in 1:2
    while true
        if isready(c1)
            println("received ", take!(c1))
            break
        elseif isready(c2)
            println("received ", take!(c2))
            break
        end
        sleep(0.05)
    end
end
