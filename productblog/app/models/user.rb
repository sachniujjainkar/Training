class User < ApplicationRecord

	#attr_accessor :address_attributes
	has_many :addresses, :dependent => :destroy
	has_many :orders
	accepts_nested_attributes_for :addresses, allow_destroy: true

	validates_presence_of :first_name, :last_name, :email, :dob

	scope :all_except, ->(user) { where.not(id: user)}

	#scope :default_scope, ->(user) { order(created_at: :desc) }

end
