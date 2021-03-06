class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  respond_to :html, :xml, :json, :js
  protect_from_forgery with: :exception
  helper_method :authenticate, :current_tournament, :get_current_tournament
	def authenticate
	  authenticate_or_request_with_http_basic do |name, password|
	    name=="admin" && password=="secret"
	  end
	end
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