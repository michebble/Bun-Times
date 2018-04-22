
class User < ActiveRecord::Base
  validates :username, length: { minimum: 4 }
  validates :password, length: { minimum: 8 }
  validates :username, :email, uniqueness: true
  has_secure_password
  has_many :favourites
  has_many :burgers, through: :favourites 
  
end