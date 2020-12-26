class Pirate < ApplicationRecord
    has_many :maps
    has_many :buried_treasures, through: :maps
    validates :name, presence: true, uniqueness: true
    has_secure_password
    accepts_nested_attributes_for :buried_treasures

    def self.find_or_create_by_omniauth(auth)
        oauth_name = auth['info']['name'] || auth['info']['nickname']
        self.where(:name => oauth_name).first_or_create do |pirate|
            pirate.password = SecureRandom.hex
        end
    end
end
