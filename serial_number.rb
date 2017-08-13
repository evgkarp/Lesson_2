print "Введите число, месяц и год (dd, mm, yyyy): "
user_input = gets.split(',')
input_arr = []
user_input.each { |i| input_arr << i.to_i }

month = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]

i = 0
serial_number = 0
while i < input_arr[1] - 1
  serial_number += month[i]
  i += 1
end
serial_number += input_arr[0]

serial_number += 1 if ( input_arr[2] % 4 == 0 ) && ( input_arr[2] % 100 != 0 ) || ( input_arr[2] % 400 == 0 )

puts "Порядковый номер даты: #{serial_number}"