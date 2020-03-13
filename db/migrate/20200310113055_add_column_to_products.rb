class AddColumnToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :knx, :boolean
    add_column :products, :dali_addressble, :boolean
    add_column :products, :dali_broadcast, :boolean
    add_column :products, :standalone, :boolean
    add_column :products, :proprietary_system, :boolean
    add_column :products, :other_type, :boolean
    add_column :products, :type_text, :string
  end
end
