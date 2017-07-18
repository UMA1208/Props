class PicksController < ApplicationController

  def index
    @picks = Pick.includes(:user)
  end

  def new
  end

  def create
    Pick.create(url: params[:url], comment: params[:comment], user_id: current_user.id)
    link = (params[:url])
    get_product(link)
  end

  def get_product(link)
    puts 'get article information'
    agent = Mechanize.new
    page = agent.get(link)
    title = page.title
    image_url = page.at('.m-article-main img')[:src]

    product = Product.new(title: title, image_url: image_url)
    product.save
  end

  def show
    @product = Product.find(params[:id])
    @pick = Pick.find(params[:id])
  end

end
