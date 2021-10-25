class ApplicationController < ActionController::Base
	before_action :set_current_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def autheniticate_user
    if @current_user==nil
      redirect_to("/")
    end
  end
end
