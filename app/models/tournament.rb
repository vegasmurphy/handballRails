class Tournament < ActiveRecord::Base
	has_many :team_tournaments, dependent: :destroy
	has_many :teams, :through => :team_tournaments
	has_many :games
	belongs_to :league
	has_many :player_goals, dependent: :destroy
	has_many :players, :through => :player_team_tournaments

    def self.get_current_tournament
        self.where("year = ? AND semester =?",self.current_tournament[:year],self.current_tournament[:semester]).first
    end
    def self.current_tournament
        year=Date.current.year
        semester=(Date.current.month>6)? 2 : 1
        current_tournament={:semester => semester,:year => year}
        return current_tournament
    end
end
