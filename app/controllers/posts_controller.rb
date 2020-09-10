class PostsController < ApplicationController
   before_action :authenticate_user
   before_action :ensure_logined_user, {only: [:edit, :update, :destroy]}
  
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def detail
    @post = Post.find_by(id: params[:id])
    @user = @post.user
 end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(
      content: params[:content],
      user_id: @logined_user.id,
      picture: params[:picture]
    )
    if @post.save
      flash[:notice] = "新しいレビューを投稿しました"
      redirect_to("/")
    else
      render("posts/new")
    end
  end
  
  def edit
    @post = Post.find_by(id: params[:id])
  end
  
  def update
     @post= Post.find_by(id:params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/")
    else
      render("posts/edit")
    end
  end
  
 def destroy
  @post = Post.find_by(id: params[:id])
  @post.destroy
  flash[:notice] = "投稿を削除しました"
  redirect_to("/")
 end

 def ensure_logined_user
  @post = Post.find_by(id: params[:id])
  if @post.user_id != @logined_user.id
    flash[:notice] = "権限がありません"
    redirect_to("/")
  end
end
  
end
