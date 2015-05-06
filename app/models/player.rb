class Player < ActiveRecord::Base
	has_many :player_team_tournaments
	has_many :teams, :through => :player_team_tournaments
	has_many :tournaments, :through => :player_team_tournaments
	has_many :player_goals, dependent: :destroy
	has_many :player_game_statistics
	has_one :user_profile

	def self.search(search)
	   where("lower(name) like lower(?)", "%#{search}%").to_sql
	   where("lower(name) like lower(?)", "%#{search}%")
	end
	def get_current_tournament
        tournaments.where("year = ? AND semester =?",current_tournament[:year],current_tournament[:semester]).first
    end
    def current_tournament
        year=Date.current.year
        semester=(Date.current.month>6)? 2 : 1
        current_tournament={:semester => semester,:year => year}
        return current_tournament
    end
end
