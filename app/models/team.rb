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

    def score(tournament)
    	scores={}
    	count=0
        points=0
        gf=0
        ga=0
        gd=0
    	visiting_games.each do |game|
    		if game.tournament_id==tournament.id
    			count=count+1
                gf+=game.opponent_score
                ga+=game.team_score
                if game.opponent_score>game.team_score
                    points+=3
                elsif game.opponent_score==game.team_score
                    points+=2
                else
                    points+=1
                end
            end
    	end
    	games.each do |game|
    		if (game.tournament_id==tournament.id)
    			count+=1
                ga+=game.opponent_score
                gf+=game.team_score
                if game.opponent_score<game.team_score
                    points+=3
                elsif game.opponent_score==game.team_score
                    points+=2
                else
                    points+=1
                end
    		end
    	end
    	scores[:games_played]=count
        scores[:goals_favor]=gf
        scores[:goals_against]=ga
        scores[:goal_difference]=gf-ga
        scores[:points]=points
    	return scores
    end
end