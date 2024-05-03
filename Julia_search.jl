# Функция для поиска элемента в массиве данных
function Julia_search(data::Vector{Any}, target::String)
    # Итерируемся по элементам массива
    for (index, item) in enumerate(data)
        # Проверяем, является ли элемент строкой и совпадает ли он с целевым элементом
        if item isa String && item == target
            return index  # Возвращаем индекс, если элемент найден
        end
    end
    return nothing  # Возвращаем `nothing`, если элемент не найден
end

# Диапазон данных, который мы хотим сохранить
huge_range = 1:10000000

# Создаем пустой массив для данных
data = Vector{Any}()

# Добавляем элементы в массив по мере необходимости
for i in huge_range
    push!(data, i)
end

# Добавляем другие типы данных в виде строк
append!(data, ["дача", *, /, !, |, <, >, "\$", %, ^, -, +, 3.14, "ключи", "True", "дом", 2.55, "False"])

# Выполняем поиск целевого элемента
target = +
result = Julia_search(data, target)

# Выводим результат
if result != nothing
    println("Элемент '$target' найден на позиции $result.")
else
    println("Элемент '$target' не найден в массиве.")
end