class Burger < ActiveRecord::Base
  belongs_to :shop
  has_many :favourites
end