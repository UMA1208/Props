class ProductsController < ApplicationController

  def index
    @products = Product.includes(:user)
  end

  def search
    @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end
end
