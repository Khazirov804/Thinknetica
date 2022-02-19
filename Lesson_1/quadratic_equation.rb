puts "A value:"
a = gets.to_f
puts "B value:"
b = gets.to_f
puts "C value:"
c = gets.to_f
unless a == 0
  d = b**2 - 4 * a * c
  if d < 0
    puts "Discriminant = #{d}, no roots"
  elsif d == 0
    x = -b / 2 * a
    puts "Discriminant = #{d}, roots: x1 = x2 = #{x}"
  elsif
    sqrt_d = Math.sqrt(d)
    x1 = (-b + sqrt_d) / 2 * a
    x2 = (-b - sqrt_d) / 2 * a
    puts "Discriminant = #{d}, roots:x1 = #{x1}, x2 = #{x2}"
   end
end
