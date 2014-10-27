class ThemeController < ApplicationController
  def index
    @themes = Theme.all
  end

  def show
    @themes = Theme.find(params[:id])
    @posts = @themes.posts
    @post = Post.new  #新規ポスト作成用
    @star = Star.new  #新規ファボ作成
  end

  def new
    @themes = Theme.find(params[:id])
    @posts = @themes.posts
    @star = Star.new  #新規ファボ作成
    @posts.id = "id"
  end

  def create
    @star = Star.new(star_params)
    if @star.save
      redirect_to @star, notice: "ユーザ登録しました。"
    else
      render 'home#index'
    end
  end

  def update
    @star = Star.new(star_params)
    if @star.save
      redirect_to @star, notice: "ユーザ登録しました。"
    else
      render 'home#index'
    end
  end

  private
  def user_params
    params.require(:star).permit(:user_id, :post_id)
  end

end
