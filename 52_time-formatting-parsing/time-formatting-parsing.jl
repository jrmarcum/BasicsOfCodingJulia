using Dates, Printf

t = now()
println(Dates.format(t, "yyyy-mm-ddTHH:MM:SS") * "+00:00")

t1 = DateTime("2012-11-01T22:08:41", dateformat"yyyy-mm-ddTHH:MM:SS")
println(t1)

h = hour(t); ampm = h < 12 ? "AM" : "PM"
h12 = h % 12; h12 = h12 == 0 ? 12 : h12
println("$(h12):$(lpad(minute(t), 2, '0'))$(ampm)")

day_abbr = Dates.format(t, "E")
mon_abbr = Dates.format(t, "U")
d = day(t); d_str = d < 10 ? " $d" : "$d"
println("$day_abbr $mon_abbr $d_str $(Dates.format(t, "HH:MM:SS")) $(year(t))")

ms = millisecond(t)
ms_str = lpad(ms * 1000, 6, '0')
println(Dates.format(t, "yyyy-mm-ddTHH:MM:SS") * ".$(ms_str)-00:00")

t2 = Time(20, 41, 0)
println(DateTime(Date(0), t2))

@printf "%d-%02d-%02dT%02d:%02d:%02d-00:00\n" year(t) month(t) day(t) hour(t) minute(t) second(t)

try
    parse(DateTime, "8:41PM", dateformat"HH:MMPM")
catch e
    println(e.msg)
end
