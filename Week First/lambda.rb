p "Lamda "

lam = lambda{p "Hello this is lambda"}

lam.call
p lam.class
p lam

 # lam.call(10)  shows the arguments error

 lam = lambda { |x| puts x }    # creates a lambda that takes 1 argument
 lam.call(2)


 proc = Proc.new { |x,y| puts x*y } # creates a proc that takes 1 argument
proc.call(4,nil.to_i)
puts "New output"
puts nil.to_i
