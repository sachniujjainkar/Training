class UntilLoop
	def initialize()
		@index = 5
	end

	def until_loop
		

		until @index==0
			puts "Index: #{@index}"
			@index -=1
		end

	end



end

UntilLoop.new.until_loop