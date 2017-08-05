class ProductsController < ApplicationController

  def index
    @products = Product.includes(:user)
    @q = Product.ransack(params[:q])
    @articles = @q.result(distinct: true)
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
    video_id = page.at('meta[itemprop="videoId"]')[:content]
    image_url = "http://i.ytimg.com/vi/#{video_id}/mqdefault.jpg"

    # if page.at('.m-article-main img')[:src]
    #   image_url = page.at('.m-article-main img')[:src]
    # elsif
    # else
    #   redirect_to root_path
    # end

    product = Product.new(title: title, image_url: image_url, user_id: current_user.id, url: params[:url], url: params[:product].require(:url), tag_list: params[:product].require(:tag_list), video_id: video_id)
  end

  def show
    @product = Product.find(params[:id])
    @comments = @product.comments.includes(:user)
  end

  def hiphop
    @products = Product.tagged_with("HipHop")
  end

  def economics
    @products = Product.tagged_with("政治・経済")
  end

  def love
    @products = Product.tagged_with("愛")
  end

  def peace
    @products = Product.tagged_with("平和")
  end

  def live
    @products = Product.tagged_with("生きる")
  end

  def friend
    @products = Product.tagged_with("友達")
  end

  def battle
    @products = Product.tagged_with("勝負")
  end
  private
end
