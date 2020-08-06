class UsersController < ApplicationController
  def index
    @users= User.all
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
      image_file: '/review_app/public/user_images/S__40493076.jpg'
      )
    if @user.save
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
  
end
