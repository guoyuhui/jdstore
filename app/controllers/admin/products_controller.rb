class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin?




  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    @product.save
    redirect_to products_path

  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price)
  end

end
