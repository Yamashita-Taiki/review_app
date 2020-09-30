class RakutenController < ApplicationController

  def search
   if params[:keyword]
    @items = RakutenWebService::Ichiba::Item.search(
    keyword: params[:keyword],
    hits: 20,
    )
  end
   @items = @items.page(params[:page])
  end

end
