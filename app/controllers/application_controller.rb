class ApplicationController < ActionController::Base
    
    helper_method :current_pirate, :logged_in?
    
    def welcome 
    end

    private

    def logged_in?
        !!session[:pirate_id]
    end

    def current_pirate
        @current_pirate ||= Pirate.find_by_id(session[:pirate_id]) if session[:pirate_id]
    end

    def redirect_if_not_logged_in
        redirect_to login_path if !logged_in?
    end
    
end
