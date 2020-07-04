require 'sinatra/base'

class App < Sinatra::Base
  
  set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do 
    erb :create_heros
  end
  
  post '/teams' do
    @team = Pirate.new(params[:pirate])
    @ship1 = Ship.new(params[:pirate][:ships][0])
    @ship2 = Ship.new(params[:pirate][:ships][1])
  end
  
end
