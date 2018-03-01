class Post < ApplicationRecord
	belongs_to :category
	has_many :comments
	accepts_nested_attributes_for :comments
	validates :title, :description, :category_id, presence: true
	acts_as_taggable

	
	  extend FriendlyId
  friendly_id :title, use: :slugged

end
