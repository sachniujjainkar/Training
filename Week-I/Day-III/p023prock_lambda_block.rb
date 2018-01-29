# Block Examples

[1,2,3].each { |x| puts x*2 }   # block is in between the curly braces

[1,2,3].each do |x|
  puts x*2                    # block is everything between the do and end
end

# Proc Examples
p = Proc.new { |x| puts x*2 }
[1,2,3].each(&p)              # The '&' tells ruby to turn the proc into a block

proc = Proc.new { puts "Hello World" }
proc.call                     # The body of the Proc object gets executed when called

# Lambda Examples
lam = lambda { |x| puts x*2 }
[1,2,3].each(&lam)

lam = lambda { puts "Hello World" }
lam.call


#...........Procs are objects, blocks are not

p = Proc.new { puts "Hello World" }

p.call  # prints 'Hello World'
p.class # returns 'Proc'
a = p   # a now equals p, a Proc instance
p       # returns a proc object '#<Proc:0x007f96b1a60eb0@(irb):46>'



#.......At most one block can appear in an argument list

def multiple_procs(proc1, proc2)
  proc1.call
  proc2.call
end

a = Proc.new { puts "First proc" }
b = Proc.new { puts "Second proc" }

multiple_procs(a,b)

#...........Differences between Procs and Lambdas
proc = Proc.new { puts "Hello world" }
lam = lambda { puts "Hello World" }

puts proc.class # returns 'Proc'
puts lam.class  # returns 'Proc'

#......Lambdas check the number of arguments, while procs do not

lam = lambda { |x| puts x }    # creates a lambda that takes 1 argument
lam.call(2)                    # prints out 2
#lam.call                       # ArgumentError: wrong number of arguments (0 for 1)
#lam.call(1,2,3)                # ArgumentError: wrong number of arguments (3 for 1)

proc = Proc.new { |x| puts x } # creates a proc that takes 1 argument
proc.call(2)                   # prints out 2
proc.call                      # returns nil
proc.call(1,2,3)               # prints out 1 and forgets about the extra arguments



#.....Lambdas and procs treat the ‘return’ keyword differently

def lambda_test
  lam = lambda { return }
  lam.call
  puts "Hello world"
end

lambda_test                 # calling lambda_test prints 'Hello World'


def proc_test
  proc = Proc.new { return }
  proc.call
  puts "Hello world"
end

proc_test                 # calling proc_test prints nothing
