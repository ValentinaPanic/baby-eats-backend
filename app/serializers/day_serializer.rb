class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :meal_type, :foods, :user_id
  belongs_to :user
  
  
end
