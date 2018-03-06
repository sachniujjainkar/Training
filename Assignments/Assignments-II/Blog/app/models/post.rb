 class Post < ApplicationRecord
 	extend FriendlyId
    friendly_id :title, use: :slugged

 	#attr_accessible :title, :body, :tag_list
	belongs_to :category
	belongs_to :user
	has_many :comments, dependent: :destroy

	has_many :taggings, dependent: :destroy
	has_many :tags, through: :taggings

	validates :title, presence: true,
                    length: { minimum: 5 }
	
	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |post|
	      csv << post.attributes.values_at(*column_names)
	    end
	  end
	end

end
