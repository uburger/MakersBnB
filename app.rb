require 'sinatra/base'
require 'sinatra/reloader'
require './lib/user'
require_relative './lib/room'
# require './database_connection_setup'


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

    redirect :spaces
  end

  get '/sign-in' do
    erb :sign_in
  end
  
  post '/sign-in' do
    redirect :spaces
  end

  get '/spaces/new' do
    erb :new
  end

  get '/spaces' do
    @booked = Room.book
    @all_rooms = Room.all
    erb :spaces
  end
  
  post '/spaces' do
    Room.select(params[:select])
    Room.add(params[:new_space], '1', '1', 1, 1)
    redirect '/spaces'
  end

  get '/spaces/details' do
    'details'
  end
  

  run! if app_file == $0
end
