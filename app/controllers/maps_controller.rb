class MapsController < ApplicationController
    before_action :set_map, only: [:show, :edit, :update]
    before_action :redirect_if_not_logged_in
    
    def show
        @buried_treasure = BuriedTreasure.find_by_id(params[:buried_treasure_id])
    end

    def edit
    end

    def update
        if @map.update(map_params)
            redirect_to pirate_path(current_pirate)
        else
            render 'edit'
        end
    end
        
    private

    def map_params
        params.require(:map).permit(:secret_hiding_place, :pirate_id, :buried_treasure_id)
    end

    def set_map
        @map = Map.find_by_id(params[:id])
        redirect_to pirate_path(current_pirate) if !@map
    end
end
