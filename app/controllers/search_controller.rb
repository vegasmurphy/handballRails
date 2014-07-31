class SearchController < ApplicationController
  def index
  	@players = Player.search params["query"]
  	@teams = Team.search params["query"]
  end

end
