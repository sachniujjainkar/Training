

#String eql?, test two string for identical content
#It returns the same result as ==
#String equals?, test wether two strings are the same object
#===

s1 = 1
s2 = 1.0
s3 = s2

if s1==s2
  puts "Both string have identical content"
else
  puts 'Both String do not have identical content'
end
=begin
if s1===s2
  puts "Both string have identical content"
else
  puts 'Both String do not have identical content'
end
=end
if s1.eql?(s2)
  puts "Both string have identical content"
else
  puts 'Both String do not have identical content'
end
puts s1.object_id
puts s2.object_id
puts s3.object_id

if s3.equal?(s2)
  puts "Both string have identical objects"
else
  puts 'Both String do not have identical objectst'
end


if s1.equal?(s3)
  puts "Both string have identical objects"
else
  puts 'Both String do not have identical objectst'
end
