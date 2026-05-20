atexit(() -> println("!"))

# In Julia, exit() runs atexit handlers; use ccall(:_exit,...) to skip them
ccall(:_exit, Cvoid, (Cint,), 3)
