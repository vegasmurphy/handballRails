class Team < ActiveRecord::Base
	has_many :team_tournaments, dependent: :destroy
	has_many :tournaments, :through => :team_tournaments
	has_many :games
	has_many :visiting_games,:class_name =>"Game", :foreign_key => "opponent_id"
	has_many :player_team_tournaments
	has_many :players, :through => :player_team_tournaments
    def self.search(search)
      search_condition = "%" + search + "%"
      find(:all, :conditions => ['name LIKE ?', search_condition])
    end
end
