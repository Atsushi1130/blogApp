class HomeController < ApplicationController
  def index
    @posts = Post.all.order(created_at: "desc")
    @user = User.find_by(id: 1)
  end

  def detail
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: 1)
  end
end
