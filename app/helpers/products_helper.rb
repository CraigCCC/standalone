module ProductsHelper

  private

  def radio_option(product, option)
    option_sym = option.to_sym
    if product.send(option_sym) == "other_#{option}"
      text = product.send((option + '_text').to_sym)
      result = "<div class='tag is-warning is-light is-rounded'>#{text}</div>".html_safe
      return result
    else
      column = product.send(option_sym)
      text = t("product.column.#{option}.#{column}")
      result = "<div class='tag is-link is-light is-rounded'>#{text}</div>".html_safe
      return result if column.present?
    end
  end

  def checkbox_option(product, option, column_array)
    checkbox_result(product, option, column_array) if product.send(option).present?
  end

  def checkbox_result(product, option, array)
    result_array = []
    array.each do |column|
      result_array.push(array_html(option, column, nil)) if product.send(column).present?
    end
    text = product.send("#{option}" + '_text')
    result_array.push(array_html(nil, nil, text)) if text.present?

    return result_array.sort.join("<br>").html_safe if result_array.present?
  end

  def array_html(option, c, text)
    if text.nil?
      "<div class='tag is-link is-light'>#{t("product.column.#{option}.#{c}")}</div>".html_safe
    else
      "<div class='tag is-warning is-light'>#{text}</div>".html_safe
    end
  end

  def boolean_option(product, option)
    if product.send(option)
      "<div class='tag is-link is-light'>#{t("product.column.#{option}.is_true")}</div>".html_safe
    else
      "<div class='tag is-link is-light'>#{t("product.column.#{option}.is_false")}</div>".html_safe
    end
  end

  def text_option(text)
    "<div class='tag is-info is-light'>#{text}</div>".html_safe
  end
end
