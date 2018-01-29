str1= "Renuka"
str2= "Shimpi"

=begin
# String Less than operator
=begin
puts "Less than method"
puts str1 < str2
#=> true # because it check the letter's priority

puts "Greater than method"
puts str1 > str2
# => false.  because it check the letter's priority
puts "equal (=)to method"
# Assign the value
#puts str1=str2

puts "Equal to equal method"
puts str1 == str2
# false Check the content of the string
# it returns true if the cntent of the string is same
# == (value comparison)
=end

puts "3 Equal to equal method"
puts str1 === str1
# True it checks the objects is same or not
#=== (case comparison)


puts str1.object_id
puts str2.object_id

puts str1.eql?str1
# True it checks the objects is same or not i.e object equality
#same in lenght and content
puts str1.equal?str2
# it determine object equality

puts '.Hash method'
puts str1.hash
#Generates a Fixnum hash value for this object. Hash value is use by the Hash class

puts 'casecmp method'
puts str1.casecmp(str2)
puts str1.casecmp('renujyghgh')
# check length of the content case-insensative

puts "+ method"
puts str1+str2
# concatenate the string
puts "* method"
puts str1.*3
# creates number of copies which u mention
puts str1[0,2]
#return elment on that index up 1to the no of length count

puts "size method"
puts str1.length

puts "byte size method"
puts str1.bytesize

puts "isEmpty method"
puts str1.empty?




puts str1 < str1

a="milind"
puts "New output"
puts 'My name is #{a}'