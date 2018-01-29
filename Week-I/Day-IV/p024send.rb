class Person

    def name
        @name
    end

    def name=(str)
        @name = str
    end

end

person = Person.new
person.send(:name=, "Test")
puts person.send(:name)

puts person.respond_to?('name')
puts person.respond_to?('hello')
