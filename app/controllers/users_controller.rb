class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname= current_user.nickname
    @products= user.products
  end
end
