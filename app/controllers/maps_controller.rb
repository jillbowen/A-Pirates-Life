class MapsController < ApplicationController

    def show
        @pirate = Pirate.find_by_id(params[:pirate_id]) 
    end
end
