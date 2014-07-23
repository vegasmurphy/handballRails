class League < ActiveRecord::Base
	has_many :tournaments, dependent: :destroy
end
