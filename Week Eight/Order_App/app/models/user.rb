class User < ApplicationRecord
	has_many :addresses, dependent: :destroy
	accepts_nested_attributes_for :addresses, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
