import Pkg
Pkg.activate(; temp=true)
Pkg.add("HTTP"; io=devnull)

using HTTP

function hello(req::HTTP.Request)
    return HTTP.Response(200, "hello\n")
end

function headers(req::HTTP.Request)
    body = ""
    for (name, value) in req.headers
        body *= "$name: $value\n"
    end
    return HTTP.Response(200, body)
end

router = HTTP.Router()
HTTP.register!(router, "GET", "/hello", hello)
HTTP.register!(router, "GET", "/headers", headers)

HTTP.serve(router, "0.0.0.0", 8090)
