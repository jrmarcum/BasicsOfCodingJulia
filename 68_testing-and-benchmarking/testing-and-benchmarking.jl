using Test

function int_min(a, b)
    if a < b
        return a
    end
    return b
end

@testset "IntMin basic" begin
    ans = int_min(2, -2)
    @test ans == -2
end

@testset "IntMin table driven" begin
    tests = [
        (0, 1, 0),
        (1, 0, 0),
        (2, -2, -2),
        (0, -1, -1),
        (-1, 0, -1),
    ]
    for (a, b, want) in tests
        @test int_min(a, b) == want
    end
end

println("Tests passed.")
