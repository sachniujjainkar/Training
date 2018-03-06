class Tag < ApplicationRecord
	has_many :taggings
	has_many :posts, through: :taggings

	has_many :ctaggings
	has_many :comments, through: :ctaggings

	
end
