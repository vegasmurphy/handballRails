class SearchController < ApplicationController
  def index
  	@results = Player.search params["query"]
  end

end
