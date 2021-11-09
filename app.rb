require 'sinatra/base'
require 'sinatra/reloader'

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
    @name = params[:name]
    @password = params[:password]

    erb :sign_up
  end

  run! if app_file == $0
end
