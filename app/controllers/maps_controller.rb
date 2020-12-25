class MapsController < ApplicationController

    def show
        @pirate = Pirate.find_by_id(params[:pirate_id])
        @map = Map.find_by_id(params[:id]) 
    end
end
