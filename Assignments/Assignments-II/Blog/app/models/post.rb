 class Post < ApplicationRecord
 	extend FriendlyId
    friendly_id :title, use: :slugged

 	#attr_accessible :title, :body, :tag_list
	belongs_to :category
	belongs_to :user
	has_many :comments

	has_many :taggings
	has_many :tags, through: :taggings

	

end
