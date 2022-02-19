goods = {}
loop do
  puts "Введите название товара:"
  product = gets.chomp

  break if product == "стоп"

  puts "Введите цену за единицу товара:"
  price = gets.chomp.to_f

  puts "Введите количество единиц товара:"
  quantity = gets.chomp.to_f

  goods[product] = { price: price, quantity: quantity }
end

total_price = 0

goods.each do |key, value|
  product_price = value[:price] * value[:quantity]
  total_price += product_price

  puts "Товар:#{key}. Цена за единицу:#{value[:price]}, количество:#{value[:quantity]}"
  puts "Стоимость товара:#{product_price}"
end

puts "Стоимость всех товаров:#{total_price}"
