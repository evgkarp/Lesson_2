purchase_sum = {}

loop do
  puts "Введите название товара или стоп: "
  title = gets.chomp
  break if title == "стоп"
  puts "Введите цену за единицу товара: "
  price = gets.to_f
  puts "Введите количество товара: "
  volume = gets.to_f
  temp_hash = { price: price, volume: volume }
  purchase_sum.store( title, temp_hash )
end

summary = 0

purchase_sum.each do |title, hash_in| 
  t_price = hash_in[:price] * hash_in[:volume]
  puts "Название товара: #{title}, цена за единицу товара: #{hash_in[:price]}, количество товара: #{hash_in[:volume]}, цена за общее количество товара #{t_price}"
    summary += t_price
end

puts "Итоговая сумма всех покупок в корзине: #{summary}"