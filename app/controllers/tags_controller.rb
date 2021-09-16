class TagsController < ApplicationController
  def index
    @user = User.find_by(id: 1)
    @tag = Tag.find_by(id:params[:id])
    @tag_map = PostAndTag.where(tag_id: @tag.id)
    @posts = []
    @tag_map.each do |t|
      @get_post = Post.find_by(id: t.post_id)
      @posts.push(@get_post)
    end
  end
end
