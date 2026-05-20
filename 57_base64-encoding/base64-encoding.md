Julia uses `Base64.base64encode` and `Base64.base64decode` from the Base64 stdlib. URL-safe encoding substitutes `+`/`/` with `-`/`_` manually.

___

##### Run Command:
`julia base64-encoding.jl`

##### Results:
`YWJjMTIzIT8kKiYoKSctPUB+`
`abc123!?$*&()'-=@~`
``
`YWJjMTIzIT8kKiYoKSctPUB-`
`abc123!?$*&()'-=@~`
