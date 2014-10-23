class HomeController < ApplicationController
  def index
    @themes = Theme.all
    @posts = Post.all
  end

  def about
  end

  def terms
  end
end
