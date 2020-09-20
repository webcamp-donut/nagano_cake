class CreateAdminsOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :admins_orders do |t|

      t.timestamps
    end
  end
end
