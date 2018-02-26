module Address

	def put_address
		puts "Address"
		puts "Line1: #{@line1}"
		puts "Line1: #{@line2}"
		puts "City: #{@city}"
		puts "Zip : #{@zip}"
	end

	def get_address
		puts "Enter Line1 address : "
		@line1 = gets.chomp.to_s
		puts "Enter Line2 address : "
		@line2 = gets.chomp.to_s
		puts "Enter city : "
		@city = gets.chomp.to_s
		puts "Enter zip-code : "
		@zip = gets.chomp.to_i
	end
end

class Product

	include Address

	def create_product
		puts "Product Name : "
		@pname = gets.chomp.to_s

		puts "Product SKU : "
		@psku = gets.chomp.to_s

		puts "Product Price : "
		@pprice= gets.chomp.to_i

		puts "Product Qty : "
		@pqty= gets.chomp.to_i

		get_address

	end

	def show_product
		puts "Product Name : #{@pname}"
		puts "Product SKU : #{@psku}"
		puts "Product Price : #{@pprice}"
		puts "Product Qty : #{@pqty}"
	end

	def get_product_name
	  @pname
	end

	def add_quantity(qty)
		@pqty += qty
	end


	def sub_qty(qty)
		@pqty -= qty
	end

	def get_qty
		@pqty
	end

	def get_price
		@pprice
	end


	def get_sku
	  @psku
	end

end

class Order
	include Address
	def get_order(item,qty)
		@item=item
		@price=@item.get_price * qty
		@qty=qty

		@order_number = rand(100..10000)
		@track_number = rand(1000..10000000)
		puts "Order Details"
		puts "Email : "
		@email=gets.chomp.to_s
		puts "Contact : "
		@contact = gets.chomp.to_s
		puts "Address : "
		get_address
	end

	def order_details
		puts "-----------ORDER DETAILS-----------"
		puts "Product Name : #{@item.get_product_name}"
		puts "Product SKU : #{@item.get_sku}"
		# puts "Product Qty : #{@pqty}"
		puts "Product price : #{@price}"
		puts "Order number : #{@order_number}"
		puts "Tracking number : #{@track_number}"
		puts "__________Shipping Address__________"
		put_address
		puts "__________Seller Address__________"
		 @item.put_address
	end
end

class Shop
	def initialize()
	 @products=[]
	 @order=Order.new
	end

	def menu
		while true
			puts "__________MENU__________\n"
			puts "\n1.Create Product\n2.Buy product \n3.EXIT "
			puts "Enter your choice : "
			choice = gets.chomp.to_i
			case choice

			when 1
				@product = Product.new
				@product.create_product
				@products.push(@product)

			when 2
				buy_product
			when 3
				puts "	Byeeeeeeee...........!!!!!"
				exit
			else
						puts "\nInvalid Choice......."
			end
		end
	end
	def buy_product
		if @products.count == 0
			puts "You have not created any product..."
			return
		else
			@products.each_with_index do |e,index|
				puts "----------Product #{index}-----------"
				e.show_product
			end
		end
		puts "which Item number You want to buy :  "
		@product_no = gets.chomp.to_i
		if @product_no < @products.count
			puts "Enter how many item you want to buy : "
			@pqty=gets.chomp.to_i
			# puts "#{@pqty} and #{@products[@product_no].get_qty}"
			if @pqty > @products[@product_no].get_qty
				puts "number of quantity greater than stock quantity......."
			else
				puts "__________ORDER DETAILS__________"
				@products[@product_no].sub_qty(@pqty)
				@order.get_order(@products[@product_no],@pqty)
				@order.order_details
				puts "_________________________________"
				menu
			end
		else
			puts "__________plz insert correct product number __________"
			buy_product
		end
	end
end
@shop=Shop.new
@shop.menu
