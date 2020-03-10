class Product < ApplicationRecord
  include Bitfields

  # enums
  enum brand: [:other_brand, :beg, :esylux, :steinel, :cp, :theben]
  # enum gateway: { other_type: 0, knx: 1, dali_addressble: 2, dali_broadcast:3, standalone: 4, proprietary_system: 5 }
  #bitfields
  bitfield :gateway, 1 => :other_gateway, 2 => :knx, 4 => :dali_addressble, 8 => :dali_broadcast, 16 => :standalone, 32 => :proprietary_system

  before_save do
    self.voltage_text.gsub!(/[\[\]\"]/, "") if attribute_present?("voltage_text")
  end
end
