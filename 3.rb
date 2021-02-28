## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:

def max(arr)
	for index in (0..arr.size - 1)
		arr[index] = arr[index].to_i
	end
	return arr.max
end

def min(arr)
	for index in (0..arr.size - 1)
		arr[index] = arr[index].to_i
	end
	return arr.min
end

arr = []
password = 0
file_lines = File.readlines("data/3.txt")
file_lines.each do |line|
	arr = line.split
	password += max(arr) + min(arr)
end

puts " Пароль от замка: #{password}"