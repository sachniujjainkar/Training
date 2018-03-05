class Post < ApplicationRecord
	belongs_to :category
	has_many :comments
	accepts_nested_attributes_for :comments
	validates :title, :description, :category_id, presence: true
	
	acts_as_taggable

	belongs_to :user



=begin
	def self.tagged_with(name)
    Tag.find_by!(name).posts
  end
=end


	
	  extend FriendlyId
  friendly_id :title, use: :slugged

end
