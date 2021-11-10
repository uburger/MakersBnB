require 'sinatra/base'
require 'sinatra/reloader'
require './lib/user'
require_relative './lib/room'

class MakersBnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    "Code 'n Pepper"
  end

  get '/sign-up' do
    erb :sign_up
  end

  post '/sign-up' do
    @email = params[:email]
    @password = params[:password]
    @confirmed_pw = params[:confirm]

    erb :sign_up
  end


  get '/sign-in' do
    erb :sign_in
  end

  get '/spaces/new' do
    erb :new
  end

  post '/spaces/new' do
    @new_space = Room.new(new_space: params[:new_space]) 
  end

  get '/booking' do
    @booked = Room.book
    erb :booking
  end
  
  post '/booking' do
    Room.select(params[:select])
    redirect '/booking'
  end
  

  run! if app_file == $0
end
