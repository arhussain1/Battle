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
    @player1 = Player.new(params[:player1_name])
    @player2 = Player.new(params[:player2_name])
    $game = Game.new(@player1, @player2)

    # define player hp session variables below

    redirect '/play'
  end

  get '/play' do
    @game = $game
    
    erb(:play)
  end

  get '/attack' do
    #@game = $game
    $game.attack
    #session[:player2_hp] = $player2.hp
    erb :attack
  end
  
  # dont delete this
  run! if app_file == $0
end