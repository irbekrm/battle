require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/names' do
    #@player1 = params['player1']
    #@player2 = params['player2']
    erb :player, { locals: { player1: params['player1'], player2: params['player2'] } }
  end

  run! if app_file == $0
end
