str1= "Shimpj"
str2= "Shimpi"
puts str1 > str2
def demo(&a)
  puts a.class
  puts yield.class
end
demo {puts "hello"}
