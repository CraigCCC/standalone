class Product < ApplicationRecord
  include Bitfields

  # enums
  enum brand: [:other_brand, :beg, :esylux, :steinel, :cp, :theben]
  enum execution: [:other_execution, :motion_sensor, :presence_sensor, :not_mention]
  enum two_channel: [:other_two_channel, :no_channel, :hvac]
  enum incandescent_lamp_load_max: [:other_incandescent_lamp_load_max, :'2000W', :'2300W']
  enum fluorescent_lamp_load: [:other_fluorescent_lamp_load, :'1150VA']
  enum led_lamp_load_max: [:other_led_lamp_load_max, :'150W', :'200W', :'300W', :'400W', :'500W']
  enum load: [:other_load]
  enum power_consumption: [:other_power_consumption, :pc8ma, :pc10ma, :pc16ma, :pc03w, :pc05w, :pc06w, :pc15w]
  enum stand_by_power_consumption: [:other_stand_by_power_consumption, :sbpc01w, :sbpc025w, :sbpc05w, :sbpc1w, :sbpc02ma]
  enum detection_angle: [:other_detection_angle, :da110, :da120, :da150, :da170, :da180, :da230, :da240, :da360]
  enum detection_range_towards: [:other_detection_range_towards, :drt3m, :drt5m, :drt6m, :drt7m, :drt8m, :drt9m, :drt10m, :drt12m, :drt15m, :drt28m, :drt30m]
  enum detection_range_across: [:other_detection_range_across, :dra3m, :dra5m, :dra6m, :dra7m, :dra8m, :dra9m, :dra10m, :dra12m, :dra15m, :dra16m, :dra28m, :dra30m, :dra32m, :dra40m]
  enum detection_range_seated: [:other_detection_range_seated, :drs3m, :drs5m, :drs6m, :drs7m, :drs8m, :drs9m, :drs10m, :drs12m, :drs15m, :drs28m, :drs30m]
  enum recommended_mounting_height: [:other_recommended_mounting_height, :rmh1d1m, :rmh2m, :rmh2d5m, :rmh2d8m, :rmh3m, :rmh_not_mention]
  enum max_mounting_height: [:other_max_mounting_height, :max_mh2d2m, :max_mh3m, :max_mh5m, :max_mh14m, :max_mh15m, :max_mh_not_mention]
  enum min_mounting_height: [:other_min_mounting_height, :min_mh1d1m, :min_mh1d8m, :min_mh2m, :min_mh2d5m, :min_mh4m, :min_mh_not_mention]
  enum ip: [:other_ip, :ip20, :ip40, :ip44, :ip45, :ip50, :ip54, :ip55, :ip60, :ip65, :ip66]
  enum ip_class: [:other_ip_class, :i, :ii, :iii]
  enum lowest_ambient_temperature: [:other_lowest_ambient_temperature, :latn25, :latn20, :latn10, :lat0]
  enum highest_ambient_temperature: [:other_highest_ambient_temperature, :hat40, :hat45, :hat50, :hat55]
  enum min_delay_time: [:other_min_delay_time, :min_dt10s, :min_dt15s, :min_dt1m, :min_dt5m]
  enum max_delay_time: [:other_max_delay_time, :max_dt30m, :max_dt60m, :max_dt120m]
  enum lowest_lux: [:other_lowest_lux, :lux0, :lux2, :lux5, :lux10, :lux20]
  enum highest_lux: [:other_highest_lux, :lux500, :lux1000, :lux1500, :lux2000, :lux2500, :lux3000, :lux_infinity]
  enum slave: [:s_yes, :s_no, :s_not_mention]
  enum mixed_light_measurement: [:mlm_yes, :mlm_no, :mlm_not_mention]
  enum dimmable_constant_light: [:dcl_yes, :dcl_no, :dcl_not_mention]
  enum stand_by_light: [:other_stand_by_light, :sbl_no, :sbl10p, :sbl10_40p, :sbl10_50p]
  enum push_button_connectable: [:pbc_yes, :pbc_no, :pbc_not_mention]
  enum orientation_light: [:ol_yes, :ol_no, :ol_not_mention]

  # enum gateway: { other_type: 0, knx: 1, dali_addressble: 2, dali_broadcast:3, standalone: 4, proprietary_system: 5 }
  #bitfields
  bitfield :gateway, 1 => :other_gateway, 2 => :knx, 4 => :dali_addressble, 8 => :dali_broadcast, 16 => :standalone, 32 => :proprietary_system

  before_save do
    self.voltage_text.gsub!(/[\[\]\"]/, "") if attribute_present?("voltage_text")
  end
end
