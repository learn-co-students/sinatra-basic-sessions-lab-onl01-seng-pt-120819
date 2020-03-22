require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "f379353b7e6ebe4057c23c8371559bb78e2626ad4fd1008c78811d8187b4f54775dbcbaceb1f8d95e80717dbfd94cc98036f8250f156fcc09ee5d67340d673fa"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end
    
end