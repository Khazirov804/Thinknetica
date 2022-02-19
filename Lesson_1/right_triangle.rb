puts 'Введите сторону А:'
a = gets.to_f
puts 'Введите сторону В:'
b = gets.to_f
puts 'Введите сторону С:'
c = gets.to_f

if a == b && b == c
  puts "Треугольник равнобедренный и равносторонний, но не прямоугольный."
else
  if a > b && a > c
    hyp = a
    first = b
    second = c
  elsif b > a && b > c
    hyp = b
    first = a
    second = c
  elsif c > a && c > b
    hyp = c
    first = a
    second = b
  end
  if hyp**2 == (first**2 + second**2)
    puts "Треугольник прямоугольный"
    puts "и при этом он равнобедренный" if (a == b) || (b == c) || (c == a)
  end
end
