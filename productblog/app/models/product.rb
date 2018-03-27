class Product < ApplicationRecord

	validates :name, presence: true

	  mount_uploader :image, ImageUploader

	  belongs_to :category, required: false, :touch => true



	has_many :lineitems
	has_many :orders, :through => :lineitems


	validates_processing_of :image
	validate :image_size_validation

	scope :cheap, -> { where(price: 0..30) }
	 
private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end


 def self.search(search)
  where("name LIKE ? OR sku LIKE ?", "%#{search}%", "%#{search}%") 
end


end
