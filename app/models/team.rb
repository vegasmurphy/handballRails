class Team < ActiveRecord::Base
	has_many :team_tournaments, dependent: :destroy
	has_many :tournaments, :through => :team_tournaments
end
