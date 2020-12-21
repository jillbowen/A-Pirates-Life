class PiratesController < ApplicationController
    
    def new
        @pirate = Pirate.new
    end
end
