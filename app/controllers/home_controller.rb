class HomeController < ApplicationController
  def index
    @posts = Post.all.order(updated_at: "desc")
    @user = User.find_by(id: 1)
  end

  def detail
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: 1)
    @get_tags = PostAndTag.where(post_id: @post.id)
    @tags = []
    @get_tags.each do |t|
      @tags.push(Tag.find_by(id:t.tag_id))
    end
  end
end
