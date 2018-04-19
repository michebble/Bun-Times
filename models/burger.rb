class Burger < ActiveRecord::Base
  belongs to :shop
  has_many :favourites
end