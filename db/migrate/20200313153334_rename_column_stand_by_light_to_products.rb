class RenameColumnStandByLightToProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :Stand_by_light, :stand_by_light
  end
end
