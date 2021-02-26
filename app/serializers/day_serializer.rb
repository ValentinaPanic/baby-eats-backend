class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :meals, :foods, :user_id
  belongs_to :user
  
  
end
