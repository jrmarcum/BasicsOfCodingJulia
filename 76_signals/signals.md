Julia handles signals via `InterruptException` (SIGINT/Ctrl+C) caught in a `try-catch` block. The program waits until interrupted.

___

##### Run Command:
`julia signals.jl`

##### Results:
`awaiting signal`
`[send Ctrl+C]`
``
`interrupt`
`exiting`
