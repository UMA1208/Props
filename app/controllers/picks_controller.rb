class PicksController < ApplicationController

  def index
    @picks = Pick.includes(:user)
  end
end
