class UsersController < ApplicationController
   before_action :authenticate_user, {only:[:index,:detail,:edit,:update]}
   before_action :forbid_logined_user, {only:[:new, :create, :login_page, :login]}
   before_action :ensure_correct_user, {only: [:edit, :update]}
   
  def index
    @users= User.all.order(created_at: :desc)
  end
  
  def detail
    @user = User.find_by(id: params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
      name: params[:name], 
      email: params[:email],
      image_file: params[:image_file],
      password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
    flash[:notice] = "新しいユーザーが登録されました"
    redirect_to("/users/#{@user.id}")
    else
      render('users/new')
    end
  end
  
  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.email = params[:email]
    if params[:image]
     @user.image_file = "#{@user.id}.jpg"
    image = params[:image]
    File.binwrite("public/user_images/#{@user.image_file}",image.read)
    end
    if @user.save
      flash[:notice] = "ユーザー情報が変更されました"
      redirect_to("/users/#{@user.id}")
    else
      render('users/edit')
    end
  end
  
  def login_page
  end
  
  def login
    @user = User.find_by(email: params[:email], password: params[:password])
    if @user
      flash[:notice] = "ログインしました"
      session[:user_id] = @user.id
      redirect_to("/users/index")
    else
       @error_message = "メールアドレスまたはパスワードが間違っています"
      @email= params[:email]
      @password = params[:password]
      render("users/login_page")
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end

  def bookmarks
    @user = User.find_by(id: params[:id])
    @bookmarks = Bookmark.where(user_id: @user.id)
  end
  
  def ensure_correct_user
    if @logined_user.id != params[:id].to_i
      flash[:notice] ="他のユーザー情報は変更できません"
      redirect_to("/posts/index")
    end
  end
end
