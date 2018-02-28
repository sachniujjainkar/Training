module ApplicationHelper
	def get_categories
		@categories = Category.all
	end
	def get_tags
		@categories = Tag.all
	end
	
end
