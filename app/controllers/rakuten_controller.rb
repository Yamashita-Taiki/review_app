class RakutenController < ApplicationController

  def search
   if params[:keyword]
    @items = RakutenWebService::Ichiba::Item.search(
    keyword: params[:keyword],
    hits: 30,
    )
  end
  end
  
end
