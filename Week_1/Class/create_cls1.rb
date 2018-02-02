#first way to create ruby obj is by using class keyword

class Customer
  attr_reader :full_name, :age ,:salary

  def initialize(full_name, age, salary)
    @full_name = full_name
    @age = age
    @salary = salary
  end

  
end


cust = Customer.new('Jay', '28', '55000')

puts "Name:"+cust.full_name 
puts "Age:"+cust.age
puts "Salary:"+cust.salary


