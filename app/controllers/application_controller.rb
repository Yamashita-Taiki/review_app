class ApplicationController < ActionController::Base
     protect_from_forgery with: :null_session
     before_action :set_logined_user
  
  def set_logined_user
      @logined_user = User.find_by(id: session[:user_id]) 
  end
  
  def authenticate_user
    if @logined_user == nil
      flash[:notice] = "ログインしてください"
      redirect_to('/login')
    end
  end
  
  def forbid_logined_user
    if @logined_user
      flash[:notice]="すでにログインしています"
      redirect_to("/posts/index")
    end
  end
  
end
