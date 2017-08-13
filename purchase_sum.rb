purchase_sum = Hash.new

loop do
  puts "Введите название товара или стоп: "
  title = gets.chomp
  break if title == "стоп"
  puts "Введите цену за единицу товара: "
  price = gets.to_f
  puts "Введите количество товара: "
  volume = gets.to_f
  temp_hash = { price => volume }
  purchase_sum.store( title, temp_hash )
end

summary = 0

purchase_sum.each do |title, hash_in| 
  hash_in.each do |price, volume|
    t_price = price * volume
    puts "Название товара: #{title}, цена за единицу товара: #{price}, количество товара: #{volume}, цена за общее количество товара #{t_price}"
    summary += t_price
  end
end

puts "Итоговая сумма всех покупок в корзине: #{summary}"