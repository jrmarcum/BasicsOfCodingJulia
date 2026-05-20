@enum ServerState begin
    StateIdle
    StateConnected
    StateError
    StateRetrying
end

const state_name = Dict(
    StateIdle      => "idle",
    StateConnected => "connected",
    StateError     => "error",
    StateRetrying  => "retrying"
)

state_string(s::ServerState) = state_name[s]

function transition(s::ServerState)::ServerState
    if s == StateIdle
        return StateConnected
    elseif s == StateConnected || s == StateRetrying
        return StateIdle
    elseif s == StateError
        return StateError
    else
        error("unknown state: $(state_string(s))")
    end
end

ns = transition(StateIdle)
println(state_string(ns))

ns2 = transition(ns)
println(state_string(ns2))
