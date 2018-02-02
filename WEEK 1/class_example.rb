class MyClass

	def initialize(name,city,age)
		#Instance variables live in, and are visible everywhere in the object’s scope.
		@name, @city, @age = name,city,age
	end

	def input
		puts "Enter Your Name: "
		#User input
		#gets retrieves only strings from your keyboard.
		#gets returns a string and a '\n' character
		#chomp is a string method.
		#chomp removes this '\n'(new line).
		@name=gets.chomp
		puts "Enter Your Age: "
		@age=gets.chomp
		puts "Enter Your City: "
		@city=gets.chomp
	end

	def display
		puts "I am #{@name} and \nI'm #{@age}.\nI am from #{@city}."
	end
end

	#In Ruby, a class can only inherit from a single other class.
	#Some other languages support multiple inheritance, a feature that allows classes to inherit features from multiple classes,
	#but Ruby doesn't support this.

class ClassExample < MyClass
	def initialize(state)
		@state = state
	end

	def input_state
		puts "Enter your State: "
		@state=gets.chomp
	end

	def display_state
		puts "My State name is #{@state}."
	end
end

	# A class can only inherit from one class at a time

class ClassExample1 < ClassExample
	def initialize(country)
		@country = country
	end

	def input_country
		puts "Enter Country: "
		@country=gets.chomp
		puts ""
	end

	def display_country
		puts "I am citizen #{@country}.\n"
	end
end

# obj1=MyClass.new(@name,@age,@city)
obj2=ClassExample1.new(@country)
obj2.input
obj2.input_state
obj2.input_country
obj2.display
obj2.display_state
obj2.display_country
