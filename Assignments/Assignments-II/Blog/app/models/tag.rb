class Tag < ApplicationRecord
	#attr_accessible :name
	has_many :taggings
	has_many :posts, through: :taggings

	has_many :ctaggings
	has_many :comments, through: :ctaggings
end
