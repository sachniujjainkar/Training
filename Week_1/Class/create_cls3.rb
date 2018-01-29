#third way to use th struct keyword.

Customer = Struct.new(:full_name, :card_type, :card_number)

customer1 = Customer.new('Neha', 'visa', 1234)
customer2 = Customer.new('Neha', 'visa', 1234)
customer3 = Customer.new('Neha', 'amex', 1234)

puts customer1 == customer2 
puts customer1 == customer3
puts "\n"



