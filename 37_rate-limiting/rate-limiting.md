Julia uses `sleep` and `Channel` to implement rate limiting. Timestamps vary by run.

___

##### Run Command:
`JULIA_NUM_THREADS=4 julia rate-limiting.jl`

##### Results:
`request 1 2026-05-19T23:27:26.195`
`request 2 2026-05-19T23:27:26.610`
`request 3 2026-05-19T23:27:26.843`
`request 4 2026-05-19T23:27:27.045`
`request 5 2026-05-19T23:27:27.262`
`request 1 2026-05-19T23:27:27.423`
`request 2 2026-05-19T23:27:27.423`
`request 3 2026-05-19T23:27:27.423`
`request 4 2026-05-19T23:27:27.648`
`request 5 2026-05-19T23:27:27.849`
