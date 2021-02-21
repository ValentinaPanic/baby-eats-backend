class FoodsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :meal
end
