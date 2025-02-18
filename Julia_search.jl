# Функция для поиска элемента в массиве данных
function Julia_search(data::Vector{Any}, target::Int)
    # Итерируемся по элементам массива
    for (index, item) in enumerate(data)
        # Проверяем, является ли элемент числом и совпадает ли он с целевым элементом
        if item == target
            return index  # Возвращаем индекс, если элемент найден
        end
    end
    return nothing  # Возвращаем `nothing`, если элемент не найден
end

# Диапазон данных, который мы хотим сохранить
huge_range = 1:10000000

# Создаем пустой массив для данных
data = Vector{Any}()

# Добавляем другие типы данных (исправлены ошибки с операторами и символами)
append!(data, ["дача", "\$", "%", "^", "-", "+", 3.14, "ключи", "True", "дом", 2.55, "False"])

# Добавляем элементы в массив по мере необходимости
for i in huge_range
    push!(data, i)
end

# Выполняем поиск целевого элемента
target = "дом"  # Указываем целевой элемент
result = Julia_search(data, target)

# Выводим результат
if result != nothing
    println("Элемент '$target' найден на позиции $result.")
else
    println("Элемент '$target' не найден в массиве.")
end
