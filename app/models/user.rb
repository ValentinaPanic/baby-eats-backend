class User < ApplicationRecord
    has_secure_password
    
    has_many :days
    has_many :foods, through: :days
    
    
end
