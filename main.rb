     
require 'sinatra'
require 'active_record'
require_relative 'db_config'

require'models/location'

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





