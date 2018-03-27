class Order < ApplicationRecord
	#has_one :address, through: => :users
	belongs_to :user

	belongs_to :address

	has_many :lineitems
  has_many :products, :through => :lineitems

  accepts_nested_attributes_for :lineitems

  scope :fast_delivery, ->{ where(:is_express_delivery => true) }

  def total
  	lineitems.sum(&:price)
  end

  
 end
