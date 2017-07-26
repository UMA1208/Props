class ProductsController < ApplicationController

  def index
    @products = Product.includes(:user)
  end

  def user_params
    params.require(:user).permit(:name, :tag_list)
  end

  def new
    @product =Product.new
  end

  def create
    link = params[:product].require(:url)
    get_product(link).save
  end

  def get_product(link)
    agent = Mechanize.new
    page = agent.get(link)
    title = page.title
    image_url = page.at('.m-article-main img')[:src]

    product = Product.new(title: title, image_url: image_url, user_id: current_user.id, url: params[:url], url: params[:product].require(:url), tag_list: params[:product].require(:tag_list))
  end

  def show
    @product = Product.find(params[:id])
    @comments = @product.comments.includes(:user)
  end

  def mcbattle
    @products = Product.tagged_with("MCバトル")
  end

  def economics
    @products = Product.tagged_with("政治・経済")
  end

  private
end
