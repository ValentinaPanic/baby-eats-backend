class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :date,:user_id, :foods
  # belongs_to :user
 
  # attribute :foods do |d|
  #   d.foods.map do |f|
  #     console.log(f)
  #     {
  #       name: f.name,
  #       meal_type: f.meal_type
  #     }
  #   end
    
  # end
end
