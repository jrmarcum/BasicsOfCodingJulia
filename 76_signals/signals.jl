using Base: exit_on_sigint

sigs = Channel{Int}(1)

Base.exit_on_sigint(false)

function setup_signal_handler()
    ccall(:jl_exit_on_sigint, Cvoid, (Cint,), 0)
end

println("awaiting signal")

try
    while true
        sleep(0.1)
    end
catch e
    if e isa InterruptException
        println()
        println("interrupt")
        println("exiting")
    else
        rethrow(e)
    end
end
