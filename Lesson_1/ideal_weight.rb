puts 'Your name? '
n = gets.chomp.capitalize
puts 'Your height? '
height = gets.chomp.to_f

weight = (height - 110) * 1.15

if weight < 0
  puts 'Your weight is alredy optimal'
else
  puts "Your weight must be #{weight}"	
end
