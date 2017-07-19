class PicksController < ApplicationController

  def index
    @picks = Pick.includes(:user)
  end

  def new
  end

  def create
    link = (params[:url])
    get_product(link).save

  end

  def get_product(link)
    puts 'get article information'
    agent = Mechanize.new
    page = agent.get(link)
    title = page.title
    image_url = page.at('.m-article-main img')[:src]

    product = Product.new(title: title, image_url: image_url, user_id: current_user.id, url: params[:url])
  end

  def show
    @product = Product.find(params[:id])
    @pick = Pick.find(params[:id])
  end

end
