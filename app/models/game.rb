class Game < ActiveRecord::Base
	belongs_to :team
	belongs_to :tournament
	belongs_to :opponent, :class_name => "Team"
	has_many :player_game_statistics
end
