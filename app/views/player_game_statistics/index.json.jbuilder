json.array!(@player_game_statistics) do |player_game_statistic|
  json.extract! player_game_statistic, :id, :game_id, :player_id, :goals, :yellow_cards, :red_cards, :two_minutes
  json.url player_game_statistic_url(player_game_statistic, format: :json)
end
