
class Product < ApplicationRecord
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
