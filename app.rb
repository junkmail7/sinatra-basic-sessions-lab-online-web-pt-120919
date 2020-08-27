require_relative 'config/environment'

class App < Sinatra::Base
  enable :sessions
  set :session_secret, "secret"

  get '/' do
    @session = session
    session["item"] = params["item"]
    erb :index
  end
end
