class FeedsController < ApplicationController
  def index
    @feeds = FeedDecorator.decorate_collection(Feed.all)
  end
end
