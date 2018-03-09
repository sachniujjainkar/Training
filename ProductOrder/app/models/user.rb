class User < ApplicationRecord
  has_many :addresses, inverse_of: :user, dependent: :destroy

  accepts_nested_attributes_for :addresses, allow_destroy: true
end
