class ShippingAddress < ApplicationRecord

	belongs_to :member

	validates :name, presence: true
  validates :postal_code, presence: true,
                              format: {
                              with: /\A\d{7}\z/,
                           message: "ハイフンなしで入力して下さい"
                                      }
  	validates :address, presence: true


	def full_address
    	self.postal_code + self.address + self.name
    end

end
