class Team < ActiveRecord::Base
	has_many :team_tournaments, dependent: :destroy
	has_many :tournaments, :through => :team_tournaments
    def self.search(search)
      search_condition = "%" + search + "%"
      find(:all, :conditions => ['name LIKE ?', search_condition])
    end
end
