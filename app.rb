require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        erb :'index'
    end   
   
    configure do
        enable :sessions 
        set :session_secret, "pledge10"
    end 
    
    post '/checkout' do
        @session = session 
        item = params[:item]
        @session[:item] = item 
    end


end