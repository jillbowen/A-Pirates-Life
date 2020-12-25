class PiratesController < ApplicationController
    
    def new
        @pirate = Pirate.new
        @pirate.maps.build
    end

    def create
        @pirate = Pirate.new(pirate_params)
        if @pirate.save!
            session[:pirate_id] = @pirate.id 
            redirect_to pirate_path(@pirate)
        else
            render 'new'
        end
    end

    def show
        @pirate = Pirate.find_by_id(params[:id])
        redirect_to '/' if !@pirate
    end

    def index
    end

    private

    def pirate_params
        params.require(:pirate).permit(
            :name, 
            :password, 
            :name_of_ship, 
            :crew_size, 
            :bottles_of_rum, 
            maps_attributes: [
                :map_name,
                :secret_hiding_place
            ]
        )
    end
end
