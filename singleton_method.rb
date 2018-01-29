#singleton methods and class

module Add
  def addition
    puts "Addition:#{10+20}"
  end
end

class Calculate
  def self.calc
    puts "Calculation here..."
  end
end

c_obj=Calculate.new


def c_obj.multiply
  puts "Multiplication:#{10*20}"
end

c_obj2=Calculate.new    #another object of class Calculate


#singleton class
class << c_obj
  include Add

  def divide
    print "Division:"
    puts (20/10).to_f
  end
end

print "The name of singleton method of class calculate => "
puts Calculate.singleton_methods

puts "Singleton methods of object c_obj of class calculate:#{c_obj.singleton_methods}"
#puts "Singleton class => "

Calculate.calc
puts "Object id of diveide method : #{c_obj.divide.object_id}"
puts "Ojject id of addition method : #{c_obj.addition.object_id}"
puts "Object id of multiply method : #{c_obj.multiply.object_id}"
#object_id of all three singleton method is same.

#c_obj2.multiply    #and because multiply method is singleton method i cant be called with another object
                    #only one object is used in singleton class
