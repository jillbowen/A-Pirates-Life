class Pirate < ApplicationRecord
    has_many :buried_treasures
    has_many :maps, through: :buried_treasures
    validates :name, presence: true, uniqueness: true
    has_secure_password
end
