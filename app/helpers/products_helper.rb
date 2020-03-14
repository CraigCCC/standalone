module ProductsHelper
  private
  # def is_other_option?(product, option)
  #   option_sym = option.to_sym
  #   if product.send(option_sym) == "other_#{option}"
  #     return product.send((option + '_text').to_sym)
  #   else
  #     return product.send(option_sym)
  #   end
  # end
  def is_other_option?(product, option)
    option_sym = option.to_sym
    if product.send(option_sym) == "other_#{option}"
      return product.send((option + '_text').to_sym)
    else
      column = product.send(option_sym)
      return t("product.#{option}.#{column}")
    end
  end

  def array_gateway_type(product)
    result_array = []
    result_array.push('KNX') if product.knx.present?
    result_array.push('Dali addressble') if product.dali_addressble.present?
    result_array.push('Dali broadcast') if product.dali_broadcast.present?
    result_array.push('Standalone') if product.standalone.present?
    result_array.push('Proprietary system') if product.proprietary_system.present?
    result_array.push("#{product.type_text}") if product.type_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end

  def array_sensor_tech(product)
    result_array = []
    result_array.push('PIR') if product.pir.present?
    result_array.push('HF') if product.hf.present?
    result_array.push('Ultrasonic') if product.ultrasonic.present?
    result_array.push("#{product.sensor_tech_text}") if product.sensor_tech_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end

  def array_voltage(product)
    result_array = []
    result_array.push('12VDC') if product.vdc12.present?
    result_array.push('24VDC') if product.vdc24.present?
    result_array.push('110VDC') if product.vac110.present?
    result_array.push('110-230VAC') if product.vac110_230.present?
    result_array.push('220-240VAC') if product.vac220_240.present?
    result_array.push('230V') if product.v230.present?
    result_array.push('21-30VDC(KNX bus)') if product.vdc21_30.present?
    result_array.push('9.5-22.5VDC(DALI bus)') if product.vdc9_22.present?
    result_array.push('12-36VDC') if product.vdc12_36.present?
    result_array.push('12-48VDC') if product.vdc12_48.present?
    result_array.push('110VDC') if product.vac110.present?
    result_array.push('110VDC') if product.vac110.present?
    result_array.push("#{product.voltage_text}") if product.voltage_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end

  def array_mounting_type(product)
    result_array = []
    result_array.push('Surface mount') if product.surface.present?
    result_array.push('Flush mount') if product.flush.present?
    result_array.push('Wall mount') if product.wall.present?
    result_array.push('Ceiling mount') if product.ceiling.present?
    result_array.push("#{product.mounting_type_text}") if product.mounting_type_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end

  def array_application(product)
    result_array = []
    result_array.push('Office') if product.office.present?
    result_array.push('Hospital') if product.hospital.present?
    result_array.push('Corridor') if product.corridor.present?
    result_array.push('Hallway') if product.hallway.present?
    result_array.push('Aisle') if product.aisle.present?
    result_array.push('Car park') if product.car_park.present?
    result_array.push('Storage') if product.storage.present?
    result_array.push('Underground garages') if product.underground_garages.present?
    result_array.push('Schools') if product.schools.present?
    result_array.push('Conference rooms') if product.conference_rooms.present?
    result_array.push('Gyms') if product.gyms.present?
    result_array.push('Warehouses') if product.warehouses.present?
    result_array.push('Staircases') if product.staircases.present?
    result_array.push('Industrial halls') if product.industrial_halls.present?
    result_array.push('Emergency power supply networks') if product.emergency_power_supply_networks.present?
    result_array.push('Toilets') if product.toilets.present?
    result_array.push("#{product.application_text}") if product.application_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end

  def array_bluetooth(product)
    result_array = []
    result_array.push('Not availablel') if product.not_availablel.present?
    result_array.push('Bluetooth 4.x') if product.bluetooth_4dx.present?
    result_array.push('Bluetooth_5.0') if product.bluetooth_5d0.present?
    result_array.push('Bluetooth_mesh') if product.bluetooth_mesh.present?
    result_array.push("#{product.bluetooth_text}") if product.bluetooth_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end
end
