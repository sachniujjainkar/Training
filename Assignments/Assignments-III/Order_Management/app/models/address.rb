class Address < ApplicationRecord
  belongs_to :user
  validates_presence_of :line1, :city, :email, :state, :country, :contact_no
end
