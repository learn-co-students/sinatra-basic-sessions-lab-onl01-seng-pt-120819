require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "0c821633-ada9-4930-84bc-af95bb0904f8"
      end

    get "/" do 
        erb :index
    end

    post "/checkout" do 
        session["item"] = params[:item]
        @session = session
        
        erb :checkout
    end
end