json.array!(@team_tournaments) do |team_tournament|
  json.extract! team_tournament, :id, :team_id, :tournament_id
  json.url team_tournament_url(team_tournament, format: :json)
end
