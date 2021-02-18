class Week < ApplicationRecord

    belongs_to :user
    has_many :days
    has_many :meals, through: :days
end
