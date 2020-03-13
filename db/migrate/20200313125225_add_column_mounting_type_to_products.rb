class AddColumnMountingTypeToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :surface, :boolean
    add_column :products, :flush, :boolean
    add_column :products, :wall, :boolean
    add_column :products, :ceiling, :boolean
    add_column :products, :other_mounting_type, :boolean
  end
end
