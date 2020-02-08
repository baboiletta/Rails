class Product < ApplicationRecord
    belongs_to :user
    def create
        @product = Product.new(product_params)
        @product.user = current_user
        if @product.save
          redirect_to @product, notice: 'Product was successfully created.'
        else
          render :new
        end
      end
end
