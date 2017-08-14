arr = [ 1, 1 ]

arr_add = 0
while arr_add < 100
  arr_add = arr[-1] + arr[-2]
  arr << arr_add if arr_add < 100
end

puts arr