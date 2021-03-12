class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name, :days, :foods, :lists

  has_many :days
  

end
