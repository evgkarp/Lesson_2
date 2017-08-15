fib = [ 1, 1 ]

next_number = 0
while (next_number = fib[-1] + fib[-2]) < 100
  fib << next_number if next_number < 100
end

puts fib