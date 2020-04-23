class Product < ApplicationRecord
  has_many :order_products
  has_many :orders, through: :order_products

  validates :title, :units_available, :unit_price, presence: true
  validates :hidden, inclusion: { in: [true, false] }
end
