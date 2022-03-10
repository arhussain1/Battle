require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

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
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    $game = Game.new

    # define player hp session variables below
    session[:player1_hp] = 100
    session[:player2_hp] = 100

    redirect '/play'
  end

  get '/play' do
    
    # Assign player session variables below
    @player1 = $player1.name
    @player2 = $player2.name


    # Assign player_hp session variables below
    @player1_hp = $player1.hp
    @player2_hp = $player2.hp

    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name

    $game.attack($player2)
    #session[:player2_hp] = $player2.hp
    erb :attack
  end




  
  # dont delete this
  run! if app_file == $0
end