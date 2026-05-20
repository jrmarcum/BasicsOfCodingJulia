struct Base
    num::Int
end

describe(b::Base) = "base with num=$(b.num)"

struct Container
    base::Base
    str::String
end

co = Container(Base(1), "some name")

println("co={num: $(co.base.num), str: $(co.str)}")
println("also num: ", co.base.num)
println("describe: ", describe(co.base))
println("describer: ", describe(co.base))
