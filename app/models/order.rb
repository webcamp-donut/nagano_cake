class Order < ApplicationRecord

	enum payment: [:card, :bank]

	enum adress: [:member_address, :registerd_address, :new_address ]
end
