class FeedItemsController < ApplicationController
  respond_to :html, :json

  def index
    respond_with(@feed_items = FeedItem.all)
  end

end
