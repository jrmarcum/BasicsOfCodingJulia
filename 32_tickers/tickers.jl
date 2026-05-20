using Dates

ticker = Timer(0.5; interval=0.5)
done = Channel{Bool}(1)

task = @async begin
    while true
        try
            wait(ticker)
            println("Tick at ", now())
        catch
            return
        end
    end
end

sleep(1.6)
close(ticker)
put!(done, true)
println("Ticker stopped")
