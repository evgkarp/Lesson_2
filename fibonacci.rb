arr = []
2.times { arr << 1 }
i = 2
loop do
  arr_add = ( arr[i-1] + arr[i-2] )
  arr << arr_add if arr_add < 100
  i += 1
  break if arr_add > 100
end

puts arr