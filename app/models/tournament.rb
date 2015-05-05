class Tournament < ActiveRecord::Base
	has_many :team_tournaments, dependent: :destroy
	has_many :teams, :through => :team_tournaments
	has_many :games
	belongs_to :league
	has_many :player_goals, dependent: :destroy
	has_many :players, :through => :player_team_tournaments
end
