class Order < ApplicationRecord
	#has_one :address, through: => :users
	belongs_to :user

	belongs_to :address

	has_many :lineitems
  has_many :products, :through => :lineitems

  accepts_nested_attributes_for :lineitems


  
  #  def total_price
  #   @total_price ||= lineitems.includes(:product).reduce(0) do |sum, l_item|
  #     sum + (l_item.count * l_item.product.price)
  #   end
  # end

  def total
  	lineitems.sum(&:price)
  end
  
 end
