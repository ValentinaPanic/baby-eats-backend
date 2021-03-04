class Day < ApplicationRecord
    belongs_to :user

    has_many :foods, :dependent => :delete_all

    validates :date, presence: true
end
