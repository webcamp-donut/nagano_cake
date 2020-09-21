class Product < ApplicationRecord
  attachment :image
  belongs_to :genre
  has_many :order_products, dependent: :destroy
  has_many :orders, through: :order_products, dependent: :destroy
  enum sale_status: { 販売中: 0, 売切れ: 1}
end
