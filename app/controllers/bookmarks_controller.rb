class BookmarksController < ApplicationController
    before_action :authenticate_user
    def create
        @bookmark = Bookmark.new(
      user_id: @logined_user.id,
      post_id: params[:post_id])
    @bookmark.save
    redirect_to("/posts/#{params[:post_id]}")
  
    end
    
  end