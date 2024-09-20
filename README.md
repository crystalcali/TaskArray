# TaskArray
Задача от @cali_lil
## Установка

Чтобы установить пакет `TaskArray`, выполните следующую команду в Julia REPL:

'''julia
using Pkg
Pkg.add("https://github.com/crystalcali/TaskArray.git")
using TaskArray

## Пример генерации массива из 2 случайных чисел типа Int64 в диапазоне от 10 до 100
arr = generate_random_array(2, Int64, 10, 100)