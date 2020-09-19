class ChangeColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :sale_status, :integer, default: 1
  end
end
