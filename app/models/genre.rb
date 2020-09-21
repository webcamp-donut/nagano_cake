class Genre < ApplicationRecord
  
	has_many :products
	enum status: {表示:1, 非表示:2}
end
