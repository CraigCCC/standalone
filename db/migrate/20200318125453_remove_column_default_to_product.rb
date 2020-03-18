class RemoveColumnDefaultToProduct < ActiveRecord::Migration[6.0]
  def change
    change_column_default :products, :brand, nil
    change_column_default :products, :gateway, nil
    change_column_default :products, :sensor_tech, nil
    change_column_default :products, :voltage, nil
    change_column_default :products, :mounting_type, nil
    change_column_default :products, :application, nil
    change_column_default :products, :bluetooth, nil
  end
end
