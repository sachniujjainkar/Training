class Order < ApplicationRecord
 has_many :line_items , dependent: :destroy
  has_many :products, through: :line_items
  belongs_to :user
  belongs_to :address
  accepts_nested_attributes_for :line_items,  :allow_destroy => true
  # validates :line_items, acceptance: { message: 'Please  create atleast 1 line_item' }
validates :order_no, presence: true
validates :is_express_delivery, presence: true
validates :delivery_date, presence: true
validates :order_currency, presence: true
validates :tracking_no, presence: true

end
