class FoodsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :day
end
