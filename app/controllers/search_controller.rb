class SearchController < ApplicationController
  def index
  	@results = Player.search params["query"].titleize
  end

end
