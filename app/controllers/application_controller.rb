require 'sinatra/base'

class App < Sinatra::Base
  
  set :views, Proc.new { File.join(root, "../views/") }
  
  get '/' do 
    erb :create_heros
  end
  
  get '/'
  
end
