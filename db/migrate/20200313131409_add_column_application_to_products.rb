class AddColumnApplicationToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :office, :boolean
    add_column :products, :hospital, :boolean
    add_column :products, :corridor, :boolean
    add_column :products, :hallway, :boolean
    add_column :products, :aisle, :boolean
    add_column :products, :car_park, :boolean
    add_column :products, :storage, :boolean
    add_column :products, :underground_garages, :boolean
    add_column :products, :outdoor, :boolean
    add_column :products, :schools, :boolean
    add_column :products, :conference_rooms, :boolean
    add_column :products, :gyms, :boolean
    add_column :products, :warehouses, :boolean
    add_column :products, :staircases, :boolean
    add_column :products, :industrial_halls, :boolean
    add_column :products, :emergency_power_supply_networks, :boolean
    add_column :products, :toilets, :boolean
    add_column :products, :other_application, :boolean
  end
end
