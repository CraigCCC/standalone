class AddColumnBluetoothToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :bluetooth_text, :string
    add_column :products, :not_availablel, :boolean
    add_column :products, :bluetooth_4dx, :boolean
    add_column :products, :bluetooth_5d0, :boolean
    add_column :products, :bluetooth_mesh, :boolean
    add_column :products, :other_bluetooth, :boolean
  end
end
