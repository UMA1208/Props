class ProductsController < ApplicationController

  def index
    @products = Product.includes(:user)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end
end
