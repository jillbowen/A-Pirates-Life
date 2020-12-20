class Map < ApplicationRecord
    has_many :buried_treasures
    has_many :pirates, through: :buried_treasures
end
