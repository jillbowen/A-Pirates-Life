class BuriedTreasure < ApplicationRecord
    has_many :maps
    has_many :pirates, through: :maps
    validates :name, presence: true, uniqueness: true

    scope :least_cursed, -> {order(:curses)}

    def self.search(search)
        where("name LIKE ?", "%#{search}%")
    end
end
