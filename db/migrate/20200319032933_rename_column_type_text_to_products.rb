class RenameColumnTypeTextToProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :type_text, :gateway_text
  end
end
