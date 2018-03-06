class Post < ApplicationRecord

	  extend FriendlyId
  friendly_id :title, use: :slugged



  	belongs_to :user

	  has_many :comments
	  belongs_to :category

	  has_many :taggings
	has_many :tags, through: :taggings

	def self.tagged_with(name)
    	Tag.find_by!(name: name).posts
  	end

  
end
