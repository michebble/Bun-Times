class User < ActiveRecord::Base
  has_secure_password
  has_many :favourites
  #gives you two methods
  #1. password
  #2. authenticate
end