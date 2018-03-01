class Tag < ApplicationRecord
	has_many :ptaggings
	has_many :posts, through: :ptaggings

	has_many :ctaggings
	has_many :comments, through: :ctaggings
end
