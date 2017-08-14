arr = [ 1, 1 ]

i = 2
arr_add = 0
while arr_add < 100
  arr_add = ( arr[i-1] + arr[i-2] )
  arr << arr_add if arr_add < 100
  i += 1
end

puts arr