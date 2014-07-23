json.array!(@player_team_tournaments) do |player_team_tournament|
  json.extract! player_team_tournament, :id, :player_id, :team_id, :tournament_id
  json.url player_team_tournament_url(player_team_tournament, format: :json)
end
