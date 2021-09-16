class TagsController < ApplicationController
  def index
    @user = User.find_by(id: 1)
    @tag = Tag.find_by(id:params[:id])
    @tag_map = PostAndTag.where(tag_id: @tag.id)
    @post_data = []
    @tag_map.each do |t|
      @post_data.push(t.post_id)
    end
    @posts = Kaminari.paginate_array(Post.where(id:@post_data).order(updated_at: "desc")).page(params[:page]).per(10)
  end
end
