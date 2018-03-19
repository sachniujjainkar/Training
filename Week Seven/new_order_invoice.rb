module Order
	attr_accessor :oredr_no, :track_no, :email, :mobile_no, :item
@total_price, @o_id

	def get_order
		p "How many orders u wan to place?"
		@total_order = gets.chomp.to_i

		for i in 1..@total_order do
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
			p "_______________________________________________"
			p "Total Line Item=>#{@item}"
			p "Your Item in Order=>"
			p @arr	
		end
		
		def total_order_rice
			p "_______________________________________________"
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

	def menu
		while true
			p "___________________________________________"
			p "1.For Input"
			p "2.For  Shipper Address"
			p "3.For Shipping Address"
			p "4. Order Contents"
			p "5.Order Total To be paid by the customer"
			p "6.For Exit"
			p "____________________________________________"
			ch=gets.chomp.to_i
				case ch 
					when 1
						 get_order
						get_Line_Ietm
						 get_shiper_address
						  get_shiper_address
					when 2
						show_shiper_address
					when 3
						show_shiping_address
					when 4
						show_Line_Ietm
					when 5
						total_order_rice
					when 6
						exit	
				end	
		end
		
	end
end

o1 = Order_invoice.new
o1.menu