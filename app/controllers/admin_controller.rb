class AdminController < ApplicationController
  before_action :autheniticate_user

  def new
    @post = Post.new
    @post_and_tag = PostAndTag.new
  end

  def create
    @post = Post.new(create_params)
    @post.save
    @checked_tags = params.require(:post)["post_and_tag"]["tag_id"]
    @checked_tags.each do |t|
      if t != ""
        @tag_map = PostAndTag.new(
          post_id: @post.id,
          tag_id: t
        )
        @tag_map.save
      end
    end
    redirect_to("/")
  end

  def create_params
    params.require(:post).permit(:title,:body)
  end

  def delete
    @post = Post.find_by(id: params[:id])
    @post_and_tag = PostAndTag.where(post_id: @post.id)
    @post.destroy
    @post_and_tag.destroy_all
    redirect_to("/")
  end

  def edit
    @post = Post.find_by(id: params[:id])
    @post_and_tag = PostAndTag.new
    @get_tags = PostAndTag.where(post_id: @post.id)
    @tags = []
    @get_tags.each do |t|
      @tags.push(t.tag_id)
    end
  end

  def update
    @post = Post.find_by(id: params[:id])
    @e_title = params.require(:post)["title"]
    @e_body = params.require(:post)["body"]
    @post.update(title: @e_title,body: @e_body)
    PostAndTag.where(post_id: @post.id).destroy_all
    @checked_tags = params.require(:post)["post_and_tag"]["tag_id"]
    @checked_tags.each do |t|
      if t != ""
        @tag_map = PostAndTag.new(
          post_id: @post.id,
          tag_id: t
        )
        @tag_map.save
      end
    end
    redirect_to("/post/#{params[:id]}/detail")
  end

  def user_edit
    @user = User.find_by(id: params[:id])
  end

  def user_update
    @user = User.find_by(id: params[:id])
    @user.name = params.require(:user)["name"]
    @user.content = params.require(:user)["content"]
    @user.email = params.require(:user)["email"]
    @user.image = params.require(:user)["image"]
    if @user.save
      redirect_to("/")
    end
  end

  def tag_mng
    @tag = Tag.new
    @tags = Tag.all
  end

  def tag_create
    @tag = Tag.new(params.require(:tag).permit(:name))
    if @tag.save
      redirect_to("/admin/tag/mng")
    end
  end

  def tag_delete
    @tag = Tag.find_by(id: params[:id])
    @post_and_tag = PostAndTag.where(tag_id: @tag.id)
    @tag.destroy
    @post_and_tag.destroy_all
    redirect_to("/admin/tag/mng")
  end
end
