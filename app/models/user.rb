class User < ApplicationRecord
    has_secure_password
    
    has_many :weeks
    has_many :days, through: :weeks
    has_many :meals, through: :days
    
    
end
