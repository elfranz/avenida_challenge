class Customer < ApplicationRecord
  has_many :orders

  validates :email, :name, :document_number, :phone_number, :address, presence: true
end
