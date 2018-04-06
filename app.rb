require 'sinatra/base'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/names' do
    $game = Game.new params['player1'], params['player2']
    redirect '/play'
  end


  get '/play' do
    erb :player, locals: $game.describe
  end

  post '/attack' do
    res = $game.attack_to
    redirect res == 0 ? '/play' : '/show_winner'
  end

  get '/show_winner' do
    erb :winner, locals: { message: $game.winner }
  end

  run! if app_file == $0
end
