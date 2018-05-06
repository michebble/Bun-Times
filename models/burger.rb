class Burger < ActiveRecord::Base
  belongs_to :shop
  has_many :favourites
  has_many :users, through: :favourites


  
  # PATTY = {'bird', 'fish' ]

  # def self.all_/by_sdfsdf 

end 


# Burger::PATTY