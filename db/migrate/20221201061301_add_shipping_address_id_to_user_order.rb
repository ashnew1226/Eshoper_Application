class AddShippingAddressIdToUserOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :user_orders, :transaction_id, :varchar
    add_column :user_orders, :status, :integer, default: 0
    add_column :user_orders, :grand_total, :decimal, :precision => 15, :scale => 13
    add_column :user_orders, :shipping_charges, :decimal, :precision => 15, :scale => 13

  end
end
