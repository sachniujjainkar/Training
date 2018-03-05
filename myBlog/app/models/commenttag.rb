class Commenttag < ApplicationRecord
	has_many :commenttaggings
  has_many :comments, through: :commenttaggings, :source => :taggable, :source_type => 'Comment'
end
