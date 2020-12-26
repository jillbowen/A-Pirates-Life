class MapsController < ApplicationController

    def show
        @buried_treasure = BuriedTreasure.find_by_id(params[:buried_treasure_id])
        @map = Map.find_by_id(params[:id])
    end

    def edit
        @map = Map.find_by_id(params[:id])
    end

    def update
        @map = Map.find_by_id(params[:id])
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
end
