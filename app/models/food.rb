class Food < ApplicationRecord
    belongs_to :day

    validates :name, :meal_type, presence: true
end
