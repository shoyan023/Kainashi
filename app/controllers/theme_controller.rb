class ThemeController < ApplicationController
  def index
    @themes = Theme.all
    @posts = @themes.posts
    @star = @posts.stars
  end

  def show
    @themes = Theme.find(params[:id])
    @posts = @themes.posts
    @post = Post.new  #新規ポスト作成用
    @star = Star.new  #新規ファボ作成
    @star.save
  end

  def create
    @themes = Theme.find(params[:id])
    @posts = @themes.posts
    @star = @posts.stars
    @post = Post.new
  end
end
