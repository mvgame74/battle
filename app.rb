require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    session[:player_2_points] = 60
    redirect '/play'
  end

  get '/attack' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :attack
  end

  get '/play' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  @player_2_points = session[:player_2_points]
  erb :play
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end