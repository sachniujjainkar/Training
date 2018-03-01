class Ttag < ApplicationRecord
	has_many :ttaggings
  has_many :comments, through: :ttaggings
end
