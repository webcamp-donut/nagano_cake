class Order < ApplicationRecord

	belongs_to :member

	enum payment: [:クレジットカード, :銀行振込]

	enum adress: [:member_address, :registerd_address, :new_address ]


end
