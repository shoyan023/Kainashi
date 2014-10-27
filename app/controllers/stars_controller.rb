class StarsController < ApplicationController


  def index
    @themes = Theme.find(1)
  end

  def show
    @themes = Theme.find(1)
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
      redirect_to @star, notice: "お気に入り登録完了"
    else
      render 'home#index'
    end
  end

    private
    # Rails4からStrongParamaterと呼ばれる機能が追加されました。
    # セキュリティのため、permitメソッドで許可したパラメータ名しか取得できません。
    def star_params
      params.require(:star).permit(:user_id, :post_id)
    end
end
