class Post < ApplicationRecord
	 extend FriendlyId
  friendly_id :title, use: :slugged

		belongs_to :user
		has_many :comments,dependent: :destroy
		belongs_to :categry, class_name: "Categry",
                          foreign_key: "category_id"

	validates :title, presence: true,
                  length: { minimum: 5 }

                  has_many :ptaggings
	has_many :tags, through: :ptaggings,dependent: :destroy
end
