class MealsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :meal_type, :foods, :day
end
