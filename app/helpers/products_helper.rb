module ProductsHelper
  private
  def is_other_option?(product, option)
    option_sym = option.to_sym
    if product.send(option_sym) == "other_#{option}"
      return product.send((option + '_text').to_sym)
    else
      return product.send(option_sym)
    end
  end
  def checked(area)
    @product.voltage_text.nil? ? false : @product.voltage.match(area)
  end
end
