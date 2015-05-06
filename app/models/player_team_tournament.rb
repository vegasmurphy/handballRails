class PlayerTeamTournament < ActiveRecord::Base
	belongs_to :player
	belongs_to :tournament
	belongs_to :team
end
