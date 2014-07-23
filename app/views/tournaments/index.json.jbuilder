json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :year, :semester, :league_id
  json.url tournament_url(tournament, format: :json)
end
