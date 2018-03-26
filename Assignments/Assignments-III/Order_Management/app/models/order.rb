class Order < ApplicationRecord
  belongs_to :user
  belongs_to :address


  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items

  validates_presence_of :order_no, :order_price, :delivery_date, :user_id, :address_id
  validate :must_have_one_line_item

	def must_have_one_line_item
		errors.add(:line_items, 'must have one line item') if line_items.empty?
	end

  accepts_nested_attributes_for :line_items, allow_destroy: true
end
