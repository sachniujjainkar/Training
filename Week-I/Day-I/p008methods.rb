def square(num)
   num* num
 end


def demo(arg1="hello",arg2="sachin",arg3="bhoi")
  "#{arg1},#{arg2},#{arg3}."
end
puts 'square :' + square(5).to_s
puts demo
puts demo("hiii")

# Use of alias method

alias demo2 demo

puts demo2
