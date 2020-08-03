class PostsController < ApplicationController
  
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def detail
    @post = Post.find_by(id: params[:id])
  end
  
  def new
  end
  
  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/posts/index")
  end
  
  def edit
    # 変数@postを定義してください
    @post = Post.find_by(id: params[:id])
  end
  
  def update
     @post= Post.find_by(id:params[:id])
    @post.content = params[:content]
    @post.save
    redirect_to("/posts/index")
  end
  
 def destroy
    redirect_to("/posts/index")
 end
  
end
