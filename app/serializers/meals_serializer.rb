class MealsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :foods, :day
end
