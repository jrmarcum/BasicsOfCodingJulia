c1 = Channel{String}(1)
@async (sleep(2); put!(c1, "result 1"))

result = timedwait(() -> isready(c1), 1.0)
if result == :ok
    println(take!(c1))
else
    println("timeout 1")
end

c2 = Channel{String}(1)
@async (sleep(2); put!(c2, "result 2"))

result = timedwait(() -> isready(c2), 3.0)
if result == :ok
    println(take!(c2))
else
    println("timeout 2")
end
