using Dates

now_t = now()
secs = round(Int64, datetime2unix(now_t))
nanos = round(Int64, datetime2unix(now_t) * 1_000_000_000)
println(now_t)

millis = nanos ÷ 1_000_000
println(secs)
println(millis)
println(nanos)

println(unix2datetime(secs))
println(unix2datetime(nanos / 1_000_000_000))
