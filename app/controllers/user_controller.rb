class UserController < ApplicationController
  def index
  end

  def show
    @users = User.find(params[:id])
    @posts = @users.posts.order("id DESC")
    @star = Star.new  #新規ファボ作成
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
