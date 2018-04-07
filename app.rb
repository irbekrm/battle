require 'sinatra/base'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/names' do
    Game.new params['player1'], params['player2']
    redirect '/play'
  end


  get '/play' do
    erb :player, locals: Game.get_game.describe
  end

  post '/attack' do
    redirect Game.get_game.attack_to == 0 ? '/play' : '/show_winner'
  end

  get '/show_winner' do
    erb :winner, locals: { message: Game.get_game.winner }
  end

  run! if app_file == $0
end
