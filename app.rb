require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions 
        set :session_secret, "2aed74395fc01539ec92737fa367ff787adbb0467a8b880aa1d109c94f79e9538a7fcc092d03db1f27ca18bc5e26180414e5978576cab9aaf136a55991cd2352"
    end 

    get "/" do 
        erb :index
    end 

    post "/checkout" do 
        @session = session 
        item = params[:item]
        @session[:item] = item 
    end 

end