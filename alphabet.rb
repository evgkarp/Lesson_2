vowel = {}
vowel_arr = %w( a e i o u )
alphabet = ( "a".."z" )

alphabet.each_with_index do |letter, i|
 vowel.store( letter, (i + 1) ) if vowel_arr.include?(letter)
end

puts vowel