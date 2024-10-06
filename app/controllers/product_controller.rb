class ProductController < ApplicationController
  def index
    @products = Product.all.map do |product|
      product.define_singleton_method(:display_value) do |attribute|
        value = send(attribute)
        return '-' if value.nil?

        if attribute == :available
          value ? "Available" : "Not Available"
        else
          value
        end
      end
      product
    end
  end
end
