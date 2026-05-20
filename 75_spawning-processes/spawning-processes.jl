if Sys.iswindows()
    date_out = read(`cmd /c date /t`, String)
    println("> date")
    println(date_out)

    try
        read(`cmd /c date -x`, String)
    catch e
        println("command exit rc = 1")
    end

    grep_in = IOBuffer("hello grep\ngoodbye grep")
    grep_out = IOBuffer()
    run(pipeline(`findstr hello`, stdin=grep_in, stdout=grep_out))
    println("> grep hello")
    println(String(take!(grep_out)))

    ls_out = read(`cmd /c dir`, String)
    println("> ls -a -l -h")
    println(ls_out)
else
    date_out = read(`date`, String)
    println("> date")
    println(date_out)

    try
        read(`date -x`, String)
    catch e
        println("command exit rc = 1")
    end

    grep_in = IOBuffer("hello grep\ngoodbye grep")
    grep_out = IOBuffer()
    run(pipeline(`grep hello`, stdin=grep_in, stdout=grep_out))
    println("> grep hello")
    println(String(take!(grep_out)))

    ls_out = read(`ls -a -l -h`, String)
    println("> ls -a -l -h")
    println(ls_out)
end
