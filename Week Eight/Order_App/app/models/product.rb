
class Product < ApplicationRecord

	has_many :line_items, dependent: :destroy
	has_many :orders, through: :line_items 
	validates :sku, presence: true
	validates :quantity, presence: true,length: { minimum: 1 }
	validates :cost_price, presence: true
	validates :storage_type, presence: true

	include CarrierWave
	mount_uploader :prduct_image, ProductImageUploader
			def self.search(name)
		  if name
		    where('name LIKE ?', "%#{name}%").order('id DESC')
		  else
		    order('id DESC') 
		  end
		end


end
