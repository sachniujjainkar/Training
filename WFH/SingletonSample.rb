class SingletonSample

	private_class_method :new
		@@obj=nil
	def SingletonSample.create
    @@obj = new unless @@obj
    	@@obj
  end
end

object=SingletonSample.create


class << object
	def addition
		puts "Enter first number : "
		number1=gets.chomp.to_i
		puts "Enter second number : "
		number2=gets.chomp.to_i
		puts "Addition = #{number1+number2}"
	end
end
object.addition