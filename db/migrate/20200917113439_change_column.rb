class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :genres, :status, :integer, default: 1
    change_column :orders, :order_status, :integer, default: 1
    change_column :orders, :delivery_fee, :integer, default: 800
    change_column :order_products, :production_status, :integer, default: 1
    change_column :members, :withdrawal_status, :integer, default: 1
  end
end
