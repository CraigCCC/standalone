# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_10_113055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.integer "brand", default: 0
    t.string "brand_text"
    t.string "article_no"
    t.integer "gateway", default: 0, null: false
    t.integer "execution"
    t.string "execution_text"
    t.integer "sensor_tech", default: 0, null: false
    t.string "sensor_tech_text"
    t.string "dimension"
    t.integer "voltage", default: 0, null: false
    t.string "voltage_text"
    t.integer "two_channel"
    t.string "two_channel_text"
    t.integer "incandescent_lamp_load_max"
    t.string "incandescent_lamp_load_max_text"
    t.integer "fluorescent_lamp_load"
    t.string "fluorescent_lamp_load_text"
    t.integer "led_lamp_load_max"
    t.string "led_lamp_load_max_text"
    t.integer "load"
    t.string "load_text"
    t.integer "power_consumption"
    t.string "power_consumption_text"
    t.integer "stand_by_power_consumption"
    t.string "stand_by_power_consumption_text"
    t.integer "detection_angle"
    t.string "detection_angle_text"
    t.integer "detection_range_towards"
    t.string "detection_range_towards_text"
    t.integer "detection_range_across"
    t.string "detection_range_across_text"
    t.integer "detection_range_seated"
    t.string "detection_range_seated_text"
    t.integer "recommended_mounting_height"
    t.string "recommended_mounting_height_text"
    t.integer "max_mounting_height"
    t.string "max_mounting_height_text"
    t.integer "min_mounting_height"
    t.string "min_mounting_height_text"
    t.integer "ip"
    t.string "ip_text"
    t.integer "ip_class"
    t.string "ip_class_text"
    t.integer "lowest_ambient_temperature"
    t.string "lowest_ambient_temperature_text"
    t.integer "highest_ambient_temperature"
    t.string "highest_ambient_temperature_text"
    t.integer "min_delay_time"
    t.string "min_delay_time_text"
    t.integer "max_delay_time"
    t.string "max_delay_time_text"
    t.integer "lowest_lux"
    t.string "lowest_lux_text"
    t.integer "highest_lux"
    t.string "highest_lux_text"
    t.boolean "lux_learning"
    t.integer "mounting_type", default: 0, null: false
    t.string "mounting_type_text"
    t.integer "application", default: 0, null: false
    t.string "application_text"
    t.integer "slave"
    t.integer "mixed_light_measurement"
    t.integer "dimmable_constant_light"
    t.integer "Stand_by_light"
    t.string "stand_by_light_text"
    t.integer "push_button_connectable"
    t.integer "orientation_light"
    t.integer "bluetooth", default: 0, null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "knx"
    t.boolean "dali_addressble"
    t.boolean "dali_broadcast"
    t.boolean "standalone"
    t.boolean "proprietary_system"
    t.string "type_text"
  end

end