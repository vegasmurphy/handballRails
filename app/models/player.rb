class Player < ActiveRecord::Base
	has_many :player_team_tournaments, dependent: :destroy
	has_many :teams, :through => :player_team_tournaments
	has_many :tournaments, :through => :player_team_tournaments
	has_many :player_goals, dependent: :destroy
end
