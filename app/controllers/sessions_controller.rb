class SessionsController < ApplicationController

    def new 
    end

    def create
        if @pirate = Pirate.find_by(name: params[:name])
            session[:pirate_id] = @pirate.id 
            redirect_to pirate_path(@pirate)
        else    
            flash[:error] = "Ye been drinkin too much rum, try again."
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:pirate_id)
        redirect_to '/'
    end
end