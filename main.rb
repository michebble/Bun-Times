     
require 'sinatra'
require 'sinatra/reloader'
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

helpers do

  def logged_in?
    current_user ? true : false
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end



get '/' do
  erb :index
end


get '/questions' do
 erb :question
end

get '/questions/mood' do
  erb :mood
end

get '/questions/weather' do
  erb :weather
end

get '/questions/hunger' do
  erb :hunger
end

get '/burgers' do

end


get '/burgers/:id' do

end

post '/session' do
  user = User.find_by(email: params[:email])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id # single source of truth
    # prevents the data going stale
    redirect to('/questions')
  else
    erb :index
  end
end

delete '/session' do
  # session[:user_id] = nil
  # redirect to('/')
end


