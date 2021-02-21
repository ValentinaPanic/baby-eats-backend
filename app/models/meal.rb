 class Meal < ApplicationRecord
    
    belongs_to :day
    has_many :foods

end
