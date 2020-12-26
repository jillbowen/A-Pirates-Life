class PiratesController < ApplicationController
    
    def new
        @pirate = Pirate.new
        @pirate.buried_treasures.build
        @pirate.buried_treasures.build
    end

    def create
        @pirate = Pirate.new(pirate_params)
        if @pirate.save!
            session[:pirate_id] = @pirate.id 
            redirect_to pirate_path(current_pirate)
        else
            render 'new'
        end
    end

    def show
        @pirate = Pirate.find_by_id(params[:id])
        redirect_to '/' if !@pirate
    end

    def index
        @pirates = Pirate.all
    end

    def edit
        @pirate = Pirate.find_by_id(params[:id])
    end

    def update
        @pirate = Pirate.find_by_id(params[:id])
        if @pirate.update(pirate_params)
            redirect_to pirate_path(current_pirate)
        else
            render 'edit'
        end
    end

    private

    def pirate_params
        params.require(:pirate).permit(
            :name, 
            :password, 
            :name_of_ship, 
            :crew_size, 
            :bottles_of_rum, 
            buried_treasures_attributes: [
                :name,
                :booby_traps,
                :curses,
                :description_of_booty,
                :id
            ]
        )
    end
end
