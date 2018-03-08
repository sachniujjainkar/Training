class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :comment_taggings, dependent: :destroy
  has_many :tags, through: :comment_taggings
end
