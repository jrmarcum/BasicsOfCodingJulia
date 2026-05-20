messages = Channel{String}(1)

@async put!(messages, "ping")

msg = take!(messages)
println(msg)
