class Pirate < ApplicationRecord
    has_many :buried_treasures
    has_many :maps, through: :buried_treasures
    has_secure_password
    validates :name, presence: true, uniqueness: true
    validates :password, presence: true
end
