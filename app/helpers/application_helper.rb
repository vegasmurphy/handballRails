module ApplicationHelper
	def current_tournament
		year=Date.current.year
		semester=(Date.current.month>6)? 2 : 1
		current_tournament={:semester => semester,:year => year}
		return current_tournament
	end
	def get_current_tournament (tournaments)
        tournaments.where("year = ? AND semester =?",current_tournament[:year],current_tournament[:semester]).first
    end
end
