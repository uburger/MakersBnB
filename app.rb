require 'sinatra/base'
require 'sinatra/reloader'
require './lib/user'

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

  run! if app_file == $0
end
