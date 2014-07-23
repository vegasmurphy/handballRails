class PlayerTeamTournament < ActiveRecord::Base
	belongs_to :player
	has_one :tournament
	has_one :team
end
