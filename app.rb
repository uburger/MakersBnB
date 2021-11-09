require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/room'

class MakersBnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    "Code 'n Pepper"
  end

  get '/test2' do
    erb :sign_up
  end

  get '/booking' do
    @booked = Room.book
    erb :booking
  end
  
  post '/booking' do
    Room.select(params[:select])
    redirect '/booking'
  end
  
  get '/list-spaces' do
    erb :list_space
  end

  run! if app_file == $0
end
