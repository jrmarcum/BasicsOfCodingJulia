ls_path = Sys.which("ls")

if ls_path !== nothing
    run(`$ls_path -a -l -h`)
elseif Sys.iswindows()
    run(`cmd /c dir`)
else
    println("ls not found")
end
