class AttrAccsr
	attr_accessor :name

	def initialize()
	  @name = "renuka"
	end
end

object=AttrAccsr.new
puts object.name
puts object.name="shubham"