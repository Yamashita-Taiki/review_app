class PostsController < ApplicationController
  
  def index
    @posts=
    Post.all
  end
  
  def detail
   @post = Post.find_by(id: params[:id])
  end
  
  def create
    
  end
  
  def new
    @post = Post.new(content:params[:content])
    @post.save
    redirect_to("/posts/index")
  end
  
end
