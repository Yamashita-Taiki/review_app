class PostsController < ApplicationController
  
  def index #投稿一覧
    @posts=
    Post.all.order(created_at: :desc)
  end
  
  def detail #レビュー詳細ページ
   @post = Post.find_by(id: params[:id])
  end
  
  def new　#新規レビュー
    
  end
  
  def create　　　#レビュー投稿
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/posts/index")
  end
  
  def edit　　　#レビュー編集
    @post = Post.find_by(id: params[:id])
  end
  
end
