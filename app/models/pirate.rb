class Pirate < ApplicationRecord
    has_many :maps
    has_many :buried_treasures, through: :maps
    validates :name, presence: true, uniqueness: true
    has_secure_password
end
