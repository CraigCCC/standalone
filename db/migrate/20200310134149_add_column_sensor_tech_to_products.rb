class AddColumnSensorTechToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :pir, :boolean
    add_column :products, :hf, :boolean
    add_column :products, :ultrasonic, :boolean
    add_column :products, :other_sensor_tech, :boolean
  end
end
