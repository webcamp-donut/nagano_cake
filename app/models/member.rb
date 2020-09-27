class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   has_many :shipping_addresses, dependent: :destroy
   has_many :orders, dependent: :destroy
   has_many :cart_items, dependent: :destroy

   validates :last_name, presence: true
  validates :first_name, presence: true
  validates :kana_last_name, presence: true,
                             format: {
                              with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                           message: "全角カタカナのみで入力して下さい"
                                      }
  validates :kana_first_name, presence: true,
                             format: {
                              with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                           message: "全角カタカナのみで入力して下さい"
                                      }

  validates :postal_code, presence: true
  validates :address, presence: true
  validates :phone, presence: true

   def active_for_authentication?
    super && (self.withdrawal_status == 1)
  end


end