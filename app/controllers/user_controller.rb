class UserController < ApplicationController
  def index
  end

  def show
    @users = User.find(params[:id])
  end
end
