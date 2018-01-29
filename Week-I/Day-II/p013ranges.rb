

#The two dot form creates an inclusive range
digits = -1..9
puts digits.include?(5)
puts digits.min
puts digits.max
puts digits.reject {|i| i<5}

puts (-1..10)===5
puts (-1..10)===15
puts (1..10)===5.55
puts ('a'..'z')==='x'
puts ('a'..'j')==='x'

#the three-dot form creates a range
#that excludes the specified high value
a=(1...10).to_a
a.each{|e| puts e}
