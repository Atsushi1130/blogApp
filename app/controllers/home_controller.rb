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

  def login_form
    @user = User.new
  end

  def login
    @user = User.find_by(admin_login)
    if @user
      session[:user_id] = @user.id
      redirect_to("/")
    # else
    #   @error_message = "メールアドレスもしくはパスワードが違います"
    #   render("home/login_form.html.erb")
    end
  end

  def admin_login
    params.require(:user).permit(:email,:password)
  end

  def contact_form
    @inquery = Inquery.new
  end

  def contact
    @inquery = Inquery.new
    @inquery.name = params.require(:inquery)["name"]
    @inquery.email = params.require(:inquery)["email"]
    @inquery.message = params.require(:inquery)["message"]
    if (@inquery.name != "" && @inquery.email != "" && @inquery.message != "") == false
      @error_message = "未入力の項目があります"
      render("contact_form.html.erb")
      return
    end
    if ContactMailer.send_mail(@inquery).deliver_now
      redirect_to("/success_contact")
    else
      render("contact_form.html.erb")
    end
  end

  def success_contact
  end
end
