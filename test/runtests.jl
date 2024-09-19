using Test
using TaskArray

@testset "ArrayGenerator Tests" begin

    # Тест для generate_random_array с целыми числами
    @testset "generate_random_array integers" begin
        arr = generate_random_array(2, Int64, 10, 100)
        @test length(arr) == 2
        @test all(x -> x >= 10 && x <= 100, arr)
        @test isa(arr, Vector{Int64})
        
    end

    # Тест для generate_random_array с числами с плавающей запятой
    @testset "generate_random_array floats" begin
        arr = generate_random_array(2, Float64, 0.0, 1.0)
        @test length(arr) == 2
        @test all(x -> x >= 0.0 && x <= 1.0, arr)
        @test isa(arr, Vector{Float64})
    end

    # Тест для generate_fibonacci_array
    @testset "generate_fibonacci_array" begin
        arr = generate_fibonacci_array(1, 3, Int)
        @test arr == [1, 1, 2]
        arr = generate_fibonacci_array(3, 3, Int)
        @test arr == [2, 3, 5]
        arr = generate_fibonacci_array(5, 3, Float64)
        @test arr == [5.0, 8.0, 13.0]
    end

    # Тест для generate_arithmetic_progression_array
    @testset "generate_arithmetic_progression_array" begin
        arr = generate_arithmetic_progression_array(1, 1, 4)
        @test arr == [1, 2, 3, 4]
        arr = generate_arithmetic_progression_array(5, 1, 4)
        @test arr == [5, 6, 7, 8]
        arr = generate_arithmetic_progression_array(0.5, 0.5, 4)
        @test arr == [0.5, 1.0, 1.5, 2.0]
    end

end
