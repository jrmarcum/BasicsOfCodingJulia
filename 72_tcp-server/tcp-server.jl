using Sockets

server = listen(8090)

function handle_connection(conn)
    try
        message = readline(conn)
        ack_msg = uppercase(strip(message))
        write(conn, "ACK: $ack_msg\n")
    catch e
        println("Read error: ", e)
    finally
        close(conn)
    end
end

println("TCP server listening on port 8090")
while true
    conn = accept(server)
    Threads.@spawn handle_connection(conn)
end
