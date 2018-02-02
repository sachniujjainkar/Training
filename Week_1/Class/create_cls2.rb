#second way is use Class.new

Employee = Class.new do
  attr_reader :full_name, :age, :salary

  def initialize(full_name, age, salary)
    @full_name = full_name
    @age= age
    @salary = salary
  end

 end





