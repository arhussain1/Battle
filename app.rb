require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # Add routes here
  enable :sessions

  get '/' do
    "Testing infrastructure working!"
    
    erb(:index)
  end

  post '/names' do
    # define player names below
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]

    # define player hp session variables below
    session[:player1_hp] = 100
    session[:player2_hp] = 100

    redirect '/play'
  end

  get '/play' do
    
    # Assign player session variables below
    @player1 = session[:player1_name]
    @player2 = session[:player2_name]

    # Assign player_hp session variables below
    @player1_hp = session[:player1_hp]
    @player2_hp = session[:player2_hp]

    erb(:play)
  end

  get '/attack' do
    @player1 = session[:player1_name]
    @player2 = session[:player2_name]
    erb :attack
  end




  
  # dont delete this
  run! if app_file == $0
end