class ProductsController < ApplicationController
  def index
    @products = Product.all.map do |product|
      product.define_singleton_method(:display_value) do |attribute|
        value = send(attribute)
        return '-' if value.nil? || value.blank?

        if attribute == :available
          value ? "Available" : "Not Available"
        else
          value
        end
      end
      product
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "Product was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :content, :quantity, :price, :discount, :available, :released_at, :expiry_date)
  end

end
