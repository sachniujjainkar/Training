
module Trig
PI =3.142
  def Trig.sin(x)
    puts "The module method"
    puts x
  end
end

module Math
include Trig
def a
  puts "these is second module "
end
end

module Mod1
def  initialize(name)
      @nam = name
  end
  def to_s
    @nam
  end
end

#puts "This is new program"
module Mod2
  include Mod1
  def who_am_i?
      puts "#{self.class} {\##{ self.object_id}:#{self.to_s}"
  end
end
class Class1
  include Mod2
end

class Class2
  include Mod2
end

c1=Class1.new("Renu")
c2=Class2.new("Shimpi")
puts c1.who_am_i?
puts c2.who_am_i?


=begin
#self method=>
class S
  puts 'Just started class S'
  puts self
  module M
    puts 'Nested module S::M'
    puts self
  end
  puts 'Back in the outer level of S'
  puts self
end

=begin
# bang method
str1 ="Renu"
puts str1.object_id
#str2 = str1.upcase!
str2=str1.upcase
puts str2.object_id
puts str1




class Dog
  def initialize(breed)
    @breed1 = breed
    puts "#{@breed1}"
  #  puts "#{@breed}"
  end
end

#class Lab < Dog
#  def initialize(breed)
    #super(breed)
    #@name = name
  #  puts "#{@name}"
#  end

#  def to_s
#  "(#@breed)"
#  end
#end

 Dog.new("Labrador1")
 Dog.new("Labrador2")

=end
