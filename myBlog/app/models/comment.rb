class Comment < ApplicationRecord
	belongs_to :post

	has_many :commenttaggings, :as =>  :taggable
  has_many :commenttags, through: :commenttaggings

  
end
