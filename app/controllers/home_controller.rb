class HomeController < ApplicationController
  def index
    @posts = Post.all.order(created_at: "desc")
  end

  def detail
    @post = Post.find_by(id: params[:id])
  end
end
