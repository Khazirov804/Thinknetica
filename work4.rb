print "Какую сумму будем откладывать в месяц: "
sum = gets.to_f

print "Сколько месяцев будем откладывать: "
month = gets.to_i

s = 0

1.upto(month) do |mm|
	s = s + sum
	puts "Накопления за #{mm} месяц: #{s} "
end
puts "За #{month} месяцев накоплено: #{s}"
