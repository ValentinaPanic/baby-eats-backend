class Day < ApplicationRecord
    
    belongs_to :week
    has_many :meals
    has_many :foods, through: :meals
end
