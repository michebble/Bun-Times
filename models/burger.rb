class Burger < ActiveRecord::Base
  belongs_to :shop
  has_many :favourites
  has_many :users, through: :favourites
end