function f(from)
    for i in 0:2
        println("$from : $i")
    end
end

f("direct")

t1 = Threads.@spawn f("goroutine")
t2 = Threads.@spawn println("going")

wait(t1)
wait(t2)
println("done")
