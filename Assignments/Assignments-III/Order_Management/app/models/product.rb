class Product < ApplicationRecord
  validates_presence_of :name
  mount_uploader :image, ImageUploader


  has_many :line_items
  has_many :orders, through: :line_items
end
