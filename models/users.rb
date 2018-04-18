class User < ActiveRecord::Base
  has_secure_password
  #gives you two methods
  #1. password
  #2. authenticate
end