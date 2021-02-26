class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name, :days, :meals

  has_many :days
  

end
