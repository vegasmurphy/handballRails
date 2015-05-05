class Player < ActiveRecord::Base
	has_many :player_team_tournaments
	has_many :teams, :through => :player_team_tournaments
	has_many :tournaments, :through => :player_team_tournaments
	has_many :player_goals, dependent: :destroy
	has_many :player_game_statistics

	def self.search(search)
	   where("lower(name) like lower(?)", "%#{search}%").to_sql
	   where("lower(name) like lower(?)", "%#{search}%")
	end
end
