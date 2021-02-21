class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :meals, :foods
end
