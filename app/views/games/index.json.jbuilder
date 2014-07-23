json.array!(@games) do |game|
  json.extract! game, :id, :team_id, :opponent_id, :team_score, :opponent_score, :date, :location
  json.url game_url(game, format: :json)
end
