using Printf

function examineRune(r::Char)
    if r == 't'
        println("found tee")
    elseif r == 'ส'
        println("found so sua")
    end
end

const s = "สวัสดี"

println("Len: ", sizeof(s))

for b in Vector{UInt8}(s)
    @printf "%x " b
end
println()

println("Rune count: ", length(s))

for (runeValue, idx) in zip(s, eachindex(s))
    @printf "U+%04X '%s' starts at %d\n" Int(runeValue) runeValue (idx - 1)
end

println()
println("Using DecodeRuneInString")
for (runeValue, idx) in zip(s, eachindex(s))
    @printf "U+%04X '%s' starts at %d\n" Int(runeValue) runeValue (idx - 1)
    examineRune(runeValue)
end
