require "singleton"

class MySingleton
	# @first_instance=nil
include Singleton

	def initialize()
		@first_instance=nil
	end

	def self.method_name
		if (first_instance==nil)
			first_instance=MySingleton.new
		end

		return first_instance;
	end

end