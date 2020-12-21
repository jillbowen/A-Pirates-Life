class SessionsController < ApplicationController
    def welcome
    end

    def new 
    end

    def create
        @pirate = Pirate.find_by(name: params[:pirate][:name])    
        if @pirate && @pirate.authenticate(params[:pirate][:password])
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