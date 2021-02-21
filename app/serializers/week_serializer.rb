class WeekSerializer
  include FastJsonapi::ObjectSerializer
  attributes :notes, :days, :user, :meals, :foods
 
end
