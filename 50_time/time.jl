using Dates

now_t = now()
println(now_t)

then = DateTime(2009, 11, 17, 20, 34, 58)
println(then)

println(year(then))
println(monthname(then))
println(day(then))
println(hour(then))
println(minute(then))
println(second(then))
println(0)
println("UTC")

println(dayname(then))

println(then < now_t)
println(then > now_t)
println(then == now_t)

diff = now_t - then
println(diff)

println(diff / Hour(1))
println(diff / Minute(1))
println(diff / Second(1))
println(Dates.value(diff) * 1_000_000)

println(then + diff)
println(then - diff)
