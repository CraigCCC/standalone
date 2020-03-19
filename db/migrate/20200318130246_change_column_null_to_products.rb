class ChangeColumnNullToProducts < ActiveRecord::Migration[6.0]
  def change
    change_column_null :products, :brand, true
    change_column_null :products, :gateway, true
    change_column_null :products, :sensor_tech, true
    change_column_null :products, :voltage, true
    change_column_null :products, :mounting_type, true
    change_column_null :products, :application, true
    change_column_null :products, :bluetooth, true
  end
end
