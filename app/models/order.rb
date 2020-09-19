class Order < ApplicationRecord

	has_many :order_products, dependent: :destroy
	has_many :products, through: :order_products

	belongs_to :member

	enum payment: [:クレジットカード, :銀行振込]

	enum adress: [:member_address, :registerd_address, :new_address ]

	enum order_status: { 入金待ち: 1, 入金確認: 2, 製作中: 3, 発送準備中: 4, 発送済み: 5 }

end
