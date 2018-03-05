class Tag < ApplicationRecord
  has_many :post_taggings
  has_many :posts, through: :post_taggings

  has_many :comment_taggings
  has_many :comments, through: :comment_taggings
end
