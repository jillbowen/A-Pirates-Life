class MapsController < ApplicationController

    def new
        @map = Map.new
        @maps = Map.all 
    end

end
