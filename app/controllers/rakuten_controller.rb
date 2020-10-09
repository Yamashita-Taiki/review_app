class RakutenController < ApplicationController

  def search
   if params[:keyword]
    @items = RakutenWebService::Ichiba::Item.search(
    keyword: params[:keyword],
    hits: 10,
    )
  end
  @items = Kaminari.paginate_array(body["data"], total_count: meta["total_count"])
      .page(meta["current_page"])
      .per(meta["limit_value"])
  end
  
end
