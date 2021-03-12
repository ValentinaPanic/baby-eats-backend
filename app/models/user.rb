class User < ApplicationRecord
    has_secure_password
    has_many :lists
    has_many :days
    has_many :foods, through: :days
    
    validates :name, :username,  presence: true
   

end
