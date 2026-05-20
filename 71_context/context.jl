import Pkg
Pkg.activate(; temp=true)
Pkg.add("HTTP"; io=devnull)

using HTTP

function hello(req::HTTP.Request)
    println("server: hello handler started")
    try
        sleep(10)
        return HTTP.Response(200, "hello\n")
    catch e
        println("server: ", e)
        return HTTP.Response(500, string(e))
    finally
        println("server: hello handler ended")
    end
end

router = HTTP.Router()
HTTP.register!(router, "GET", "/hello", hello)

HTTP.serve(router, "0.0.0.0", 8090)
