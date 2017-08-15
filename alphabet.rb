vowels_number = {}
vowels = %w(a e i o u)
alphabet =("a".."z")

alphabet.each.with_index(1) do |letter, i|
 vowels_number[letter] = i if vowels.include?(letter)
end

puts vowels_number