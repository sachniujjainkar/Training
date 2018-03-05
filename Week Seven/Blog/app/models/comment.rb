class Comment < ApplicationRecord
  belongs_to :post
   belongs_to :user
  has_many :ctaggings
	has_many :tags, through: :ctaggings
end
