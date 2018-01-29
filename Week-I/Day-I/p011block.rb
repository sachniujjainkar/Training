=begin
  Ruby Code blocks are chunks of code between braces or
  between do..end that you can associate with method invocations
=end

def demo
  puts 'inside the method...'
  yield
  puts 'again inside the method...'
  yield
  puts 'End the method...'
end

demo {puts "your in the block..."}


#passing value to the block
puts 'passin value to the block'
def demo2(x,y)
  puts 'inside the method'
  name= 'sachin'
  no = 19
  puts "yield  veriables #{name} #{no}"
  puts "x and y in method :#{x} #{y}"
  yield(name,no)
end

demo2(19,20) {|str,num|
    puts 'inside block'
   puts str+' '+num.to_s}


   def demo3(& block)
     block.call
   end

   demo3{puts 'call the block using block.call'}
