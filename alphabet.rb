vowel = Hash.new
vowel_arr = [ "a", "e", "i", "o", "y" ]
alphabet = ( "a".."z" ).to_a

alphabet.each_index do |i|
 vowel.store( alphabet[i], (i + 1) ) if vowel_arr.include?(alphabet[i]) == true
end

puts vowel