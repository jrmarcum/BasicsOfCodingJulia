Julia uses `read(cmd, String)` and `pipeline` to spawn and capture output from subprocesses. On Windows, `cmd /c date /t` and `findstr` replace Unix `date` and `grep`. Output varies by system.

___

##### Run Command:
`julia spawning-processes.jl`

##### Results:
`> date`
`Tue 05/19/2026 `
``
`command exit rc = 1`
`> grep hello`
`hello grep`
``
`> ls -a -l -h`
`[directory listing]`
