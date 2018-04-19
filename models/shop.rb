require 'active_record'
require 'geocoder'
# extend Geocoder::Model::ActiveRecord

class Shop < ActiveRecord::Base
  extend Geocoder::Model::ActiveRecord
  
  reverse_geocoded_by :latitude, :longitude
  # after_validation :geocode, :if => :address_changed?
  has_many :burgers

end