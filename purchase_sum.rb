goods = {}

loop do
  puts "Введите название товара или стоп: "
  title = gets.chomp

  break if title == "стоп"

  puts "Введите цену за единицу товара: "
  price = gets.to_f

  puts "Введите количество товара: "
  quantity = gets.to_f
  temp_hash = { price: price, quantity: quantity }
  goods.store(title, temp_hash)
end

sum = 0

goods.each do |title, hash| 
  t_price = hash[:price] * hash[:quantity]
  puts "Название товара: #{title}, 
        цена за единицу товара: #{hash[:price]}, 
        количество товара: #{hash[:quantity]}, 
        цена за общее количество товара: #{t_price}"
    sum += t_price
end

puts "Итоговая сумма всех покупок в корзине: #{sum}"