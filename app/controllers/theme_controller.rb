class ThemeController < ApplicationController
  def index
    @themes = Theme.all
    @posts = Post.all
  end

  def show
    @themes = Theme.find(params[:id])
    @posts = @themes.posts
    @post = Post.new
  end

  def create
    @themes = Theme.find(params[:id])
    @posts = @themes.posts
    @post = Post.new
  end
end
