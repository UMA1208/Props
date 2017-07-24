class PicksController < ApplicationController



  def show
    @product = Product.find(params[:id])
    @comments = @product.comments.includes(:user)
  end

end
