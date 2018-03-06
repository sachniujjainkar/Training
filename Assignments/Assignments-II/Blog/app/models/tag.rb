class Tag < ApplicationRecord
	#attr_accessible :name
	has_many :taggings, dependent: :destroy
	has_many :posts, through: :taggings

	has_many :ctaggings, dependent: :destroy
	has_many :comments, through: :ctaggings

	validates :name, uniqueness: true
end
