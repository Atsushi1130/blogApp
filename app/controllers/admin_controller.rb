class AdminController < ApplicationController
  def new
    @post = Post.new
    @tags = Tag.all
  end

  def create
    @post = Post.new(create_params)
    if @post.save
      redirect_to("/")
    end
  end

  def create_params
    params.require(:post).permit(:title,:body,{:tag => []})
  end

  def delete
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/")
  end

  def login_form
    @user = User.new
  end

  def login
    @user = User.find_by(admin_login)
    if @user
      session[:user_id] = @user.id
      redirect_to("/")
    end
  end

  def admin_login
    params.require(:user).permit(:email,:password)
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.title = params.require(:post)["title"]
    @post.body = params.require(:post)["body"]
    if @post.save
      redirect_to("/post/#{params[:id]}/detail")
    end
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
end
