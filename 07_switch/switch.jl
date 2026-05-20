using Dates

i = 2
print("Write ", i, " as ")
if i == 1
    println("one")
elseif i == 2
    println("two")
elseif i == 3
    println("three")
end

dow = Dates.dayofweek(Dates.today())
if dow == 6 || dow == 7
    println("It's the weekend")
else
    println("It's a weekday")
end

t = Dates.now()
if Dates.hour(t) < 12
    println("It's before noon")
else
    println("It's after noon")
end

function whatAmI(x)
    if isa(x, Bool)
        println("I'm a bool")
    elseif isa(x, Int)
        println("I'm an int")
    else
        println("Don't know type $(typeof(x))")
    end
end

whatAmI(true)
whatAmI(1)
whatAmI("hey")
