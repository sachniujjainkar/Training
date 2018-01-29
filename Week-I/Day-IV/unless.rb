puts 'Enter the no:'
no = gets.chomp.to_i
unless no % 2 == 0
  puts 'no is odd'
else
  puts 'no is even'
end
