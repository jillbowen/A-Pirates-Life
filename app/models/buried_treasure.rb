class BuriedTreasure < ApplicationRecord
    has_many :maps
    has_many :pirates, through: :maps
    validates :name, presence: true, uniqueness: true
end
