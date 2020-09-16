class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :member_id
      t.string :name
      t.string :address
      t.string :postal_code
      t.integer :payment
      t.integer :order_status
      t.integer :delivery_fee
      t.integer :total_fee

      t.timestamps
    end
  end
end
