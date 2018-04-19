class Burger < ActiveRecord::Base
  has_many :users
  has_many :burgers
end