class BuriedTreasuresController < ApplicationController
    def new
        @buried_treasure = BuriedTreasure.new 
    end

    def create
        @buried_treasure = BuriedTreasure.new(buried_treasure_params)
        if @buried_treasure.save 
            redirect_to buried_treasure_path(@buried_treasure)
        else
            render 'new'
            #add error message
        end
    end

    def show
        @buried_treasure = BuriedTreasure.find_by_id(params[:id])
    end

    private

    def buried_treasure_params
        params.require(:buried_treasure).permit(:name, :booby_traps, :curses, :description_of_booty)
    end
end
