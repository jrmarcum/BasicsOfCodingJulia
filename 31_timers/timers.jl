timer1 = Timer(2.0)
wait(timer1)
println("Timer 1 fired")

timer2 = Timer(1.0)
close(timer2)
println("Timer 2 stopped")

sleep(2)
