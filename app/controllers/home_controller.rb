class HomeController < ApplicationController
  def index
    @posts = Kaminari.paginate_array(Post.all.order(updated_at: "desc")).page(params[:page]).per(10)
    @user = User.find_by(id: 1)
    @get_tags = Tag.all
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

  def privacy
    @user = User.find_by(id: 1)
    @get_tags = Tag.all
  end

  def search
    @posts
    @user = User.find_by(id: 1)
    @get_tags = Tag.all
    @query = params[:query]
    if @query
      get_post = Post.where("title like ?","%#{@query}%").order(updated_at: "desc")
      @posts = Kaminari.paginate_array(get_post).page(params[:page]).per(10)
    end
  end
end
