class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.order(:id)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)

    if @product.save
      redirect_to products_path, notice: '新增產品成功'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(params_product)
      redirect_to edit_product_path, notice: '更新產品成功'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: '刪除產品成功'
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end

  def params_product
    params.require(:product).permit(:brand,
                                    :brand_text,
                                    :article_no,
                                    :type_text,
                                    :knx,
                                    :dali_addressble,
                                    :dali_broadcast,
                                    :standalone,
                                    :proprietary_system,
                                    :other_type,
                                    :execution,
                                    :execution_text,
                                    :sensor_tech,
                                    :sensor_tech_text,
                                    :pir,
                                    :hf,
                                    :ultrasonic,
                                    :other_sensor_tech,
                                    :dimension,
                                    :voltage_text,
                                    :vdc12,
                                    :vdc24,
                                    :vac110,
                                    :vac110_230,
                                    :vac220_240,
                                    :v230,
                                    :vdc21_30,
                                    :vdc9_22,
                                    :vdc12_36,
                                    :vdc12_48,
                                    :other_voltage,
                                    :two_channel,
                                    :two_channel_text,
                                    :incandescent_lamp_load_max,
                                    :incandescent_lamp_load_max_text,
                                    :fluorescent_lamp_load,
                                    :fluorescent_lamp_load_text,
                                    :led_lamp_load_max,
                                    :led_lamp_load_max_text,
                                    :load,
                                    :load_text,
                                    :power_consumption,
                                    :power_consumption_text,
                                    :stand_by_power_consumption,
                                    :stand_by_power_consumption_text,
                                    :detection_angle,
                                    :detection_angle_text,
                                    :detection_range_towards,
                                    :detection_range_towards_text,
                                    :detection_range_across,
                                    :detection_range_across_text,
                                    :detection_range_seated,
                                    :detection_range_seated_text,
                                    :recommended_mounting_height,
                                    :recommended_mounting_height_text,
                                    :max_mounting_height,
                                    :max_mounting_height_text,
                                    :min_mounting_height,
                                    :min_mounting_height_text,
                                    :ip,
                                    :ip_text,
                                    :ip_class,
                                    :ip_class_text,
                                    :lowest_ambient_temperature,
                                    :lowest_ambient_temperature_text,
                                    :highest_ambient_temperature,
                                    :highest_ambient_temperature_text,
                                    :min_delay_time,
                                    :min_delay_time_text,
                                    :max_delay_time,
                                    :max_delay_time_text,
                                    :lowest_lux,
                                    :lowest_lux_text,
                                    :highest_lux,
                                    :highest_lux_text,
                                    :lux_learning,
                                    :mounting_type_text,
                                    :application_text,
                                    :surface,
                                    :flush,
                                    :wall,
                                    :ceiling,
                                    :other_mounting_type,
                                    :office,
                                    :hospital,
                                    :corridor,
                                    :hallway,
                                    :aisle,
                                    :car_park,
                                    :storage,
                                    :underground_garages,
                                    :outdoor,
                                    :schools,
                                    :conference_rooms,:gyms,
                                    :warehouses,
                                    :staircases,
                                    :industrial_halls,:emergency_power_supply_networks,
                                    :toilets,
                                    :other_application,
                                    :slave,
                                    :mixed_light_measurement,
                                    :dimmable_constant_light,
                                    :stand_by_light,
                                    :stand_by_light_text,
                                    :push_button_connectable,
                                    :orientation_light,
                                    :bluetooth_text,
                                    :not_availablel,
                                    :bluetooth_4dx,
                                    :bluetooth_5d0,
                                    :bluetooth_mesh,
                                    :other_bluetooth,
                                    :description)
  end
end
