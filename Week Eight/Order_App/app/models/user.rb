class User < ApplicationRecord
	has_many :addresses
	accepts_nested_attributes_for :addresses,  :allow_destroy => true

	has_many :orders
end
