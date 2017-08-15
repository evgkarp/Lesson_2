print "Введите число, месяц и год (dd, mm, yyyy): "
date = gets.split(',').map(&:to_i)

months = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]

i = 0
serial_number = 0
while i < date[1] - 1
  serial_number += months[i]
  i += 1
end
serial_number += date[0]

serial_number += 1 if (date[2] % 4 == 0) && (date[2] % 100 != 0) || (date[2] % 400 == 0)

puts "Порядковый номер даты: #{serial_number}"