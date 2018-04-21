require 'active_record'
require 'geocoder'

Geocoder.configure(lookup: :opencagedata, api_key: ENV['OPENCAGE_MAP'])


class User < ActiveRecord::Base
  extend Geocoder::Model::ActiveRecord
  has_secure_password
  has_many :favourites
  has_many :burgers, through: :favourites 
  
end