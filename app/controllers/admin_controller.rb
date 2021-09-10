class AdminController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(create_params)
    if @post.save
      redirect_to("/")
    end
  end

  def create_params
    params.require(:post).permit(:title,:body)
  end

  def delete
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/")
  end
end
