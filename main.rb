     
require 'sinatra'
require 'active_record'
require 'geocoder'
require 'httparty'
require 'bcrypt'
require 'pry'
require 'pg'
require_relative 'db_config'

require_relative 'models/shop'
require_relative 'models/user'
require_relative 'models/burger'



get '/' do
  erb :index
end


get '/questions' do

end

get '/questions/:id' do
end

put '/questions' do

end

get '/burgers' do

end


get '/burgers/:id' do

end

post '/session' do
  # user = User.find_by(email: params[:email])

  # if user && user.authenticate(params[:password])
  #   session[:user_id] = user.id # single source of truth
  #   # prevents the data going stale
  #   redirect to('/choice')
  # else
  #   erb :login
  # end
end

delete '/session' do
  # session[:user_id] = nil
  # redirect to('/')
end


