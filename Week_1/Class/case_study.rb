class Customer

	@@no_of_customers=0
	def initialize(id,name,addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
	end

	def display_details
		print "Customer id:#@cust_id."
		print " Customer name:#@cust_name."
		print " Customer address:#@cust_addr."
		puts "\n"
	end

	def total_no_of_customers
		@@no_of_customers +=1
		puts "Total no of customers: #@@no_of_customers"
	end
end

cust1=Customer.new('1','Neha','Pune')
cust2=Customer.new('2','Pooja','Mumbai')
cust3=Customer.new('3','Shrini','Pune')

cust1.display_details
cust1.total_no_of_customers

cust2.display_details
cust2.total_no_of_customers

cust3.display_details
cust3.total_no_of_customers