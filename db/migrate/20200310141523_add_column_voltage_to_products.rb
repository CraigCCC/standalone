class AddColumnVoltageToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :vdc12, :boolean
    add_column :products, :vdc24, :boolean
    add_column :products, :vac110, :boolean
    add_column :products, :vac110_230, :boolean
    add_column :products, :vac220_240, :boolean
    add_column :products, :v230, :boolean
    add_column :products, :vdc21_30, :boolean
    add_column :products, :vdc9_22, :boolean
    add_column :products, :vdc12_36, :boolean
    add_column :products, :vdc12_48, :boolean
    add_column :products, :other_voltage, :boolean
  end
end
