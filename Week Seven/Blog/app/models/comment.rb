class Comment < ApplicationRecord
  belongs_to :post
  has_many :ctaggings
	has_many :tags, through: :ctaggings
end
