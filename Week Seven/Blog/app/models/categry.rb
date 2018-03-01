class Categry < ApplicationRecord
	has_many :posts,foreign_key: "category_id"

end
