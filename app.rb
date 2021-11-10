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

  get '/spaces/new' do
    # @all_rooms = Room.all
    erb :new
  end

  post '/spaces/new' do
    Room.add(params[:new_space])
    erb :spaces
  end

  get '/spaces' do
    @booked = Room.book
    @all_rooms = Room.all
    erb :spaces
  end
  
  post '/spaces' do
    Room.select(params[:select])
    redirect '/spaces'
  end
  
  run! if app_file == $0
end
