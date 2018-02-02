text = "A Hello I am here now with the character"

puts 'Found "A" at the beginning of the string.' if text.match(/^A/)
puts 'Found "O" at the beginning of the string.' if text.match(/^O/)

puts 'Found the string "character".' if text.match(/character/)
puts 'Found the word "character".' if text.match(/character\b/)