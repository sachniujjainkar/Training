class UnlessBlock

	def table
		a=7
		
		unless. a==5
			puts a
		else
			puts "value is change"
		end
			
	end
end

u1=UnlessBlock.new
u1.table