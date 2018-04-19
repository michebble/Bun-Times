     
require 'sinatra'
require 'geocoder'
require 'active_record'
require 'httparty'
require 'bcrypt'

require 'pry'
require 'pg'
require_relative 'db_config'


require_relative'models/shop'
require_relative'models/user'
require_relative'models/burger'

def index
  if params[:search].present?
    @locations = Location.near(params[:search], 50, :order => :distance)
  else
    @locations = Location.all
  end
end


get '/' do
  erb :index
end





