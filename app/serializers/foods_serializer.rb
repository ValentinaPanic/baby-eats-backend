class FoodsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :meal_type, :day
end
