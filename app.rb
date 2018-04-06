require 'sinatra/base'

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/names' do
    session['player1'] = params['player1']
    session['player2'] = params['player2']
    session['player1_hit_points'] = 100
    session['player2_hit_points'] = 100
    redirect '/play'
  end


  get '/play' do
    @player1_hit_points = session['player1_hit_points']
    @player2_hit_points = session['player2_hit_points']
    @player1 = session['player1']
    @player2 = session['player2']
    erb :player
  end

  post '/attack' do
    session['player2_hit_points'] -= 10
    redirect '/play'
  end

  run! if app_file == $0
end
