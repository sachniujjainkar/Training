puts "Use of symbol"

puts :sym.object_id
puts "symbol".object_id

puts :sym.to_sym.class
puts "symbol".to_s.class

puts "New output"
str = "aaa"
puts str.class

a=str.to_sym
puts a.class 


