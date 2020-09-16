class AddFirstNameToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :first_name, :string
    add_column :members, :kana_last_name, :string
    add_column :members, :kana_first_name, :string
    add_column :members, :postal_code, :string
    add_column :members, :address, :string
    add_column :members, :phone, :string
    add_column :members, :withdrawal_status, :integer
    add_column :members, :last_name, :string
  end
end
