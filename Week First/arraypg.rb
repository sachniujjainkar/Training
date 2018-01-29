 ary=['r',2,3,7.9,"Renu",Object.new,"milind"]

=begin
table= Array.new(3){Array.new(3,true)}
#puts table
puts Array.new(4){Hash.new}
puts "Accessing array element"
puts ary[1]
puts ary[-1]
puts ary[100]
puts ary[1,2]
puts ary.fetch(100,"ooops")
puts ary.first
puts ary.last
puts ary.take(2)
puts ary.drop(1)
puts ary.length
puts ary.count
puts ary.empty?

puts 'new method'

##puts ary.pop(2)
#puts ary
#puts deete_at(1)
#puts ary.insert(6,Object.new)
#puts ary.insert(5,nil)
#puts ary.compact!
# puts ary
=end
 words=%W[north maharshtra university]
#puts words.reverse
str=""
puts words.reverse_each{|word| str += "#{word.reverse}"}
# No change in output
puts words.reverse_each{|word| "#{word.reverse}"}
puts str

#a=ary.drop(3)
#puts a.class

#puts ary.take(2)
r=ary.delete_at(2)
puts r
puts 'ggggggggg'
puts ary