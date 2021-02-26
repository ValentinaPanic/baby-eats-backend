class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name, :days, :foods

  has_many :days
  

end
