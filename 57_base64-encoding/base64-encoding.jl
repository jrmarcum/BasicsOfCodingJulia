using Base64

data = "abc123!?\$*&()'-=@~"

sEnc = base64encode(data)
println(sEnc)

sDec = String(base64decode(sEnc))
println(sDec)
println()

uEnc = base64encode(data)
uEnc = replace(uEnc, "+" => "-", "/" => "_")
println(uEnc)

uDec_bytes = base64decode(replace(uEnc, "-" => "+", "_" => "/"))
println(String(uDec_bytes))
