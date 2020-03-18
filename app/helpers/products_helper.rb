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
      return t("product.column.#{option}.#{column}") if column.present?
    end
  end

  def array_html(option, c)
    "<div class='tag is-link is-light'>
      #{t("product.column.#{option}.#{c}")}
    </div>".html_safe
  end

  def array_gateway_type(product)
    result_array = []
    result_array.push(t("product.column.gateway.knx")) if product.knx.present?
    result_array.push(t("product.column.gateway.dali_addressble")) if product.dali_addressble.present?
    result_array.push(t("product.column.gateway.dali_broadcast")) if product.dali_broadcast.present?
    result_array.push(t("product.column.gateway.standalone")) if product.standalone.present?
    result_array.push(t("product.column.gateway.proprietary_system")) if product.proprietary_system.present?
    result_array.push("#{product.type_text}") if product.type_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end

  def array_sensor_tech(product)
    result_array = []
    result_array.push(t("product.column.sensor_tech.pir")) if product.pir.present?
    result_array.push(t("product.column.sensor_tech.hf")) if product.hf.present?
    result_array.push(t("product.column.sensor_tech.ultrasonic")) if product.ultrasonic.present?
    result_array.push("#{product.sensor_tech_text}") if product.sensor_tech_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end

  def array_voltage(product, option)
    result_array = []
    voltage_option = [:vdc12, :vdc24, :vac110, :vac110_230, :vac220_240, :vdc21_30, :vdc9_22, :vdc12_36, :vdc12_48]

    voltage_option.each do |column|
      result_array.push(array_html(option, column)) if product.send(column).present?
    end
    result_array.push("#{product.voltage_text}") if product.voltage_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end

  def array_mounting_type(product)
    result_array = []
    result_array.push(t("product.column.mounting_type.surface")) if product.surface.present?
    result_array.push(t("product.column.mounting_type.flush")) if product.flush.present?
    result_array.push(t("product.column.mounting_type.wall")) if product.wall.present?
    result_array.push(t("product.column.mounting_type.ceiling")) if product.ceiling.present?
    result_array.push("#{product.mounting_type_text}") if product.mounting_type_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end

  def array_application(product)
    result_array = []
    result_array.push(t("product.column.application.office")) if product.office.present?
    result_array.push(t("product.column.application.hospital")) if product.hospital.present?
    result_array.push(t("product.column.application.corridor")) if product.corridor.present?
    result_array.push(t("product.column.application.hallway")) if product.hallway.present?
    result_array.push(t("product.column.application.aisle")) if product.aisle.present?
    result_array.push(t("product.column.application.car_park")) if product.car_park.present?
    result_array.push(t("product.column.application.storage")) if product.storage.present?
    result_array.push(t("product.column.application.underground_garages")) if product.underground_garages.present?
    result_array.push(t("product.column.application.outdoor")) if product.schools.present?
    result_array.push(t("product.column.application.schools")) if product.schools.present?
    result_array.push(t("product.column.application.conference_rooms")) if product.conference_rooms.present?
    result_array.push(t("product.column.application.gyms")) if product.gyms.present?
    result_array.push(t("product.column.application.warehouses")) if product.warehouses.present?
    result_array.push(t("product.column.application.staircases")) if product.staircases.present?
    result_array.push(t("product.column.application.industrial_halls")) if product.industrial_halls.present?
    result_array.push(t("product.column.application.emergency_power_supply_networks")) if product.emergency_power_supply_networks.present?
    result_array.push(t("product.column.application.toilets")) if product.toilets.present?
    result_array.push("#{product.application_text}") if product.application_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end

  def array_bluetooth(product)
    result_array = []
    result_array.push(t("product.column.bluetooth.not_availablel")) if product.not_availablel.present?
    result_array.push(t("product.column.bluetooth.bluetooth_4dx")) if product.bluetooth_4dx.present?
    result_array.push(t("product.column.bluetooth.bluetooth_5d0")) if product.bluetooth_5d0.present?
    result_array.push(t("product.column.bluetooth.bluetooth_mesh")) if product.bluetooth_mesh.present?
    result_array.push("#{product.bluetooth_text}") if product.bluetooth_text.present?

    return result_array.join("<br>").html_safe if result_array.present?
  end
end
