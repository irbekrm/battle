require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/names' do
    $player1 = Player.new(params['player1'])
    $player2 = Player.new(params['player2'])
    redirect '/play'
  end


  get '/play' do
    erb :player, locals: { player1: $player1.name, player2: $player2.name, hp1: $player1.hit_points, hp2: $player2.hit_points }
  end

  post '/attack' do
    $player2.reduce_hp
    redirect '/play'
  end

  run! if app_file == $0
end
