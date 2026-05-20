Julia uses `Dates.format` with `dateformat` strings instead of Go's reference-time layout. Timezone handling differs; RFC3339 timezone offset is appended manually. Output varies by run.

___

##### Run Command:
`julia time-formatting-parsing.jl`

##### Results:
`2026-05-19T23:31:37+00:00`
`2012-11-01T22:08:41`
`11:31PM`
`Tuesday May 19 23:31:37 2026`
`2026-05-19T23:31:37.950000-00:00`
`0000-01-01T20:41:00`
`2026-05-19T23:31:37-00:00`
`Unable to parse date time. Expected directive DatePart(M) at char 6`
