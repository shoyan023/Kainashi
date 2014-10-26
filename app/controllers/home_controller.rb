class HomeController < ApplicationController
  def index
    @themes = Theme.all
  end

  def about
  end

  def terms
  end
end
