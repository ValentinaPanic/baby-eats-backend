class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :meal_type, :user_id
  # belongs_to :user
 
  attribute :foods do |d|
    d.foods.map do |f|
      {
        name: f.name
      }
    end
    
  end
end
