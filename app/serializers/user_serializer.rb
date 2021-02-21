class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name, :week_notes
  attributes :week_notes do |w| 
    w.weeks.map{ |w| w.notes}
  end
end
