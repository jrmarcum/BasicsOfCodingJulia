Julia uses the `Sockets` stdlib for TCP server functionality. Requires `JULIA_NUM_THREADS > 1` for concurrent connections.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia tcp-server.jl`

##### Results:
`TCP server listening on port 8090`
`[server runs until interrupted; connect with: nc localhost 8090]`
