require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.opponent)
    if @game.game_over?
      redirect '/game-over'
    else
      erb :attack
    end
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end


  run! if app_file == $0

end
