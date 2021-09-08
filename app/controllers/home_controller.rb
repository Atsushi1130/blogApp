class HomeController < ApplicationController
  def index
    @posts = Post.all
    @test = '# Marked in browser\n\nRendered by **marked**.'
  end

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
end
