class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname= user.nickname
    @products= user.products
    @user_image = user.icon_image
    @header_image = user.header
  end
end
