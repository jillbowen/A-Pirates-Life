class BuriedTreasuresController < ApplicationController
    before_action :set_buried_treasure, only: [:show, :edit, :update]
    before_action :redirect_if_not_logged_in

    def new
        @buried_treasure = BuriedTreasure.new 
    end

    def create
        @buried_treasure = BuriedTreasure.new(buried_treasure_params)
        if @buried_treasure.save 
            redirect_to buried_treasure_path(@buried_treasure)
        else
            render 'new'
        end
    end

    def index
        @buried_treasures = BuriedTreasure.least_cursed
    end

    def show
    end

    def edit 
    end

    def update 
        if @buried_treasure.update(buried_treasure_params)
            redirect_to buried_treasure_path(@buried_treasure)
        else
            render 'edit'
        end
    end

    private

    def buried_treasure_params
        params.require(:buried_treasure).permit(:name, :booby_traps, :curses, :description_of_booty)
    end

    def set_buried_treasure
        @buried_treasure = BuriedTreasure.find_by_id(params[:id])
        redirect_to buried_treasure_path if !@buried_treasure
    end
end
