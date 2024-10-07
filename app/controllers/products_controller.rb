class ProductsController < ApplicationController
  def index
    @products = Product.all.map do |product|
      product.define_singleton_method(:display_value) do |attribute|
        value = send(attribute)

        # Specific handling for the :available attribute
        if attribute == :available
          return value ? "Available" : "Not Available"
        end

        # Handle other attributes
        return "-" if value.nil? || value.blank?

        value
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

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:name, :content, :quantity, :price, :discount, :available, :released_at, :expiry_date)
  end

end
