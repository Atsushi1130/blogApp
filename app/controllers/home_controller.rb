class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def detail
    @post = Post.find_by(id: params[:id])
  end
end
