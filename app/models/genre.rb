class Genre < ApplicationRecord
	enum status: [:表示, :非表示 ]
	has_many :products
end
