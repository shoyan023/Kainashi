class StarController < ApplicationController
  def index
    @themes = Theme.find(1)
    @users = User.find(2)
    @posts = Post.find(1)
    @stars = @posts.stars.find(3)
  end
end
