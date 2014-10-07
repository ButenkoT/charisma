
class ProductsController < ApplicationController
	def index 
		@products = Product.all
	end

	def show
    @users = User.all
		@product = Product.find params[:id]
	end

  def new
    @product = Product.new
  end

  def create
    product = Product.new product_params
    product.user_id = @current_user.id
    product.save
    redirect_to product 
  end


  def edit
    @product = Product.find params[:id]
  end

  def update
    product = Product.find params[:id]
    product.update product_params
    redirect_to product
  end

  def destroy
    product = Product.find params[:id]
    product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:title, :price, :size,  :image, :user_id, :category_ids => [])
  end

end