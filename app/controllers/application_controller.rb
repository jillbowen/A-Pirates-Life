class ApplicationController < ActionController::Base
    
    helper_method :current_user, :logged_in?
    
    def welcome 
    end

    private

    def logged_in?
        !!session[:pirate_id]
    end

    def current_pirate
        @current_pirate ||= Pirate.find_by_id(session[:pirate_id]) if session[:user_id]
    end
end
