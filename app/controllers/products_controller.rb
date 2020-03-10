class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
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
                                    :gateway,
                                    :knx,
                                    :dali_addressble,
                                    :dali_broadcast,
                                    :standalone,
                                    :proprietary_system)
  end
end
