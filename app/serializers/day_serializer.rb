class DaySerializer
  include FastJsonapi::ObjectSerializer
  attributes :date,:user_id, :foods

end
