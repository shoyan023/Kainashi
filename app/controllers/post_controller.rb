class PostController < ApplicationController
    def create
    @themes = Theme.find(params[:id])
    @post = @themes.posts.create(post_params)
  end
end
