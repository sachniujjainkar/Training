module Order
	attr_accessor :oredr_no, :track_no, :email, :mobile_no, :item
@total_price
	def get_order
		p "Enter the order Number"	
		 @oredr_no = gets.chomp
		p "Enter the track no" 
		@track_no = gets.chomp
		p "Enter your Email"
		@email = gets.chomp
		p "Enter your mobile_no"
		@mobile_no = gets.chomp
	end
	
end

module Line_Item
	def initialize
	  @arr = Array.new
	end
	
	include Order
	attr_accessor :sku, :name, :qty, :price
	
	def get_Line_Ietm
		p "How many item u want to enter in 1 order"
		@item = gets.chomp.to_i
		for i in 1..@item do	  		
	  		p "Enter SKU of the Item"
			@sku = gets.chomp
			p "Enter Name of Item"
			@name = gets.chomp
			@arr.push(@name)			
			p "Enter Quantity"
			@qty = gets.chomp	
			p "Enter Price"
			@price = gets.chomp
			@total_price = @total_price.to_i + @price.to_i	
		end	
	end

		def show_Line_Ietm
		p "______________________________________"
			p "Total Line Item=>#{@item}"
			p "Your Item in Order=>"
			p @arr
		end
		
		def total_order_rice
		p "______________________________________"
			p "Total Order price=>#{@total_price}"
		end
end

module Address
	include Order
	include Line_Item
	attr_accessor :t_ad1, :t_city, :t_pcode, :f_ad1, :f_city, :f_pcode 
	def get_shiper_address
		p "______________________________________"
		p "Enter Address"
		p "Enter Shipper Address"
		@f_ad1= gets.chomp	
		p "Enter Shipper City"
		@f_city= gets.chomp
		p "Enter Shipper Postal Code"
		@f_pcode= gets.chomp
	end
	def get_shiping_addrress
		p "______________________________________"
		p "Enter Shipping Address"
		@t_ad1= gets.chomp
		p "Enter Shipping City"
		@t_city= gets.chomp		
		p "Enter Shipping Postal Code"
		@t_pcode= gets.chomp
	end

	def show_shiper_address
		p "______________________________________"
		p "Shipper Address => #{@f_ad1}"
		p "Shipper city => #{@f_city}"
		p "Shipper Postal Code=> #{f_pcode}"
	end

	def show_shiping_address
		p "______________________________________"
		p "Shipping Address => #{@t_ad1}"
		p "Shipping city => #{@t_city}"
		p "Shipping Postal Code=> #{t_pcode}"
	end
end

class Order_invoice
	include Order
	include Line_Item
	include Address

def get
	get_order
	get_Line_Ietm
	get_shiper_address
	get_shiping_addrress
end

def put

	p "Your Order Invoice is as follows:"
	total_order_rice
	show_shiper_address
	show_shiping_address
	show_Line_Ietm
end

end
o1 = Order_invoice.new
o1.get
o1.put

#  "OUTPUT"
# "Your Order Invoice is as follows:"
# "______________________________________"
# "Total Order price=>120"
# "______________________________________"
# "Shipper Address => pune"
# "Shipper city => pune"
# "Shipper Postal Code=> 100"
# "______________________________________"
# "Shipping Address => mumbai"
# "Shipping city => mumbai"
# "Shipping Postal Code=> 200"
# "______________________________________"
# "Total Line Item=>2"
# "Your Item in Order=>"
# ["pen", "pencil"]
