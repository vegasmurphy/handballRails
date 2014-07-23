json.array!(@player_goals) do |player_goal|
  json.extract! player_goal, :id, :player_id, :tournament_id, :goals
  json.url player_goal_url(player_goal, format: :json)
end
