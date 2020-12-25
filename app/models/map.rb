class Map < ApplicationRecord
    belongs_to :pirate 
    belongs_to :buried_treasure, optional: true
end
