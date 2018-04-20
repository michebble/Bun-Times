     
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

enable :sessions

helpers do



  def logged_in?
    current_user ? true : false
  end

  def current_user
    User.find_by(id: session[:user_id])
  end


  def login 
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id # single source of truth
      # prevents the data going stale
      redirect to('/questions')
    else
      erb :index
    end
  end


  # b = Burger.where("patty = :patty AND price >= :average",{ patty: params[:patty], average: Burger.average('price')})
  # b = Burger.where("patty = :patty1 OR patty = :patty2",{ patty1: 'fish', patty2: 'vegetable'})
  # b.where("price <= :average", {average: Burger.average('price')})
end

@user_lat = -37.8184995
@user_long = 144.9590752

get '/' do
  erb :index
end


get '/questions' do
  session[:flavour] = nil
  session[:patty] = nil
  session[:size] = nil
  #if current user is a vegan skip to ?
  erb :question
end


post '/questions/weather' do
  
  erb :weather
end

post '/questions/hunger' do
  session[:flavour] = params[:flavour]
  
  erb :hunger
end

post '/questions/mood' do
  session[:size] = params[:size]
  
  erb :mood
end

post '/burgers' do
  session[:patty] = params[:patty]
  session[:latitude] = -37.8184995
  session[:longitude] = 144.9590752
  binding.pry
  @burger_list = Burger.where("patty = :patty AND size = :size AND flavour = :flavour",{ patty: session[:patty], size: session[:size], flavour: session[:flavour] })
  
  erb :burgerlist
end


get '/burger/:id' do
  @burger = Burger.find(params[:id])
erb :burger
end

get '/signup' do
  erb :signup

end


post '/signup' do
  user = User.new
  user.username = params[:username]
  user.password = params[:password]
  user.email = params[:email]
  user.vegan = false
  user.save

  login
  
end

post '/session' do
  user = User.find_by(email: params[:email])

  login
end

delete '/session' do
  # session[:user_id] = nil
  # redirect to('/')
end


