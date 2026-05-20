using Logging, Dates

# Standard logger with timestamp
logger = ConsoleLogger(stderr, Logging.Info)
with_logger(logger) do
    @info "standard logger"
end

t = now()
@info "with micro" _module=nothing _file=nothing _line=nothing

# Custom prefix logging via IOBuffer
io = IOBuffer()
println(io, "my:$(Dates.format(t, "yyyy/mm/dd HH:MM:SS")) from mylog")
println(io, "ohmy:$(Dates.format(t, "yyyy/mm/dd HH:MM:SS")) from mylog")

buf = IOBuffer()
println(buf, "hello")
print("from buflog:buf:$(Dates.format(t, "yyyy/mm/dd HH:MM:SS")) ", String(take!(buf)))

# Structured JSON-like output
ts = Dates.format(t, "yyyy-mm-ddTHH:MM:SS") * ".000000000Z"
println(stderr, """{"time":"$ts","level":"INFO","msg":"hi there"}""")
println(stderr, """{"time":"$ts","level":"INFO","msg":"hello again","key":"val","age":25}""")
