require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :index
    end
    
    configure do 
        enable :sessions 
        set :sessions_secret, "look"
    end

    post '/checkout' do 
        @sessions = session 
        item = params["item"]
        @sessions[:item] = item 
        # binding.pry
    end 
end