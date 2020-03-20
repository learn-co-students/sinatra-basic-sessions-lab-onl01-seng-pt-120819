require_relative 'config/environment'

class App < Sinatra::Base

  configure do 
    enable :sessions
    set :secret_session, "secret"
  end

  get '/hey' do 

    @session = session
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