class User < ApplicationRecord
	has_many :addresses, dependent: :destroy
	validates :email, presence: true
	accepts_nested_attributes_for :addresses,  :allow_destroy => true
 # validates :addresses, acceptance: { message: 'Please  create atleast 1 address' }
	has_many :orders
end
