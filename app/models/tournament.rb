class Tournament < ActiveRecord::Base
	has_many :team_tournaments, dependent: :destroy
	has_many :teams, :through => :team_tournaments
	belongs_to :league
	has_many :player_goals, dependent: :destroy
end
