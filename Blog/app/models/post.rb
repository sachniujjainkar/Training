class Post < ApplicationRecord
	extend FriendlyId
  friendly_id :title, use: :slugged
	belongs_to :user
	belongs_to :category
	has_many :comments

	# acts_as_taggable_on :tags
	validates :title, :content, :category, presence: true


end
