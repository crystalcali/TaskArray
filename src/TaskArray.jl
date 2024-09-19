module TaskArray

__precompile__(false)

export generate_random_array, generate_fibonacci_array, generate_arithmetic_progression_array

using Random

"""
    generate_random_array(n::Int=2, T::Type{<:Integer}=Int, lower::T=1, upper::T=100) -> Vector{T}

Генерирует массив из `n` случайных целых чисел типа `T` в заданном диапазоне от `lower` до `upper`.
"""
function generate_random_array(n::Int=2, ::Type{T}=Int, lower::T=10, upper::T=100) where {T<:Integer}
    return rand(lower:upper, n)
end

"""
    generate_random_array(n::Int=2, T::Type{<:AbstractFloat}=Float64, a::T=0.0, b::T=1.0) -> Vector{T}

Генерирует массив из `n` случайных чисел с плавающей запятой типа `T` в диапазоне от `a` до `b`.
"""
function generate_random_array(n::Int=2, ::Type{T}=Float64, a::T=0.0, b::T=1.0) where {T<:AbstractFloat}
    return a .+ (b - a) .* rand(T, n)
end


"""
    generate_fibonacci_array(start_index::Int=1, n::Int=3, T::Type{<:Number}=Int) -> Vector{T}

Генерирует массив из `n` последовательных чисел Фибоначчи типа `T`, начиная с индекса `start_index`.
"""
function generate_fibonacci_array(start_index::Int=1, n::Int=3, ::Type{T}=Int) where {T<:Number}
    fibs = fibonacci_sequence(start_index + n - 1, T)
    return fibs[start_index:start_index+n-1]
end

function fibonacci_sequence(n::Int, ::Type{T}=Int) where {T<:Number}
    seq = Vector{T}(undef, n)
    seq[1] = T(1)
    seq[2] = T(1)
    for i in 3:n
        seq[i] = seq[i-1] + seq[i-2]
    end
    return seq
end


"""
    generate_arithmetic_progression_array(start::T, step::T, n::Int=4) where {T<:Real}

Генерирует массив из `n` чисел типа `T`, начиная с `start` с шагом `step`.
"""
function generate_arithmetic_progression_array(start::T, step::T, n::Int=4) where {T<:Real}
    return [start + step*(i-1) for i in 1:n]
end

end