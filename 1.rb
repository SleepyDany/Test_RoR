## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:

file = File.open("data/1.txt", "r+")
arr = file.read
floor = 0
for index in (0..arr.length - 1)
	if arr[index] == "("
		floor += 1
	elsif arr[index] == ")" && floor != 0
		floor -= 1
	end
end
puts floor
file.close