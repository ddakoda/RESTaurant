class SessionController < Sinatra::Base
  enable  :sessions
  helpers Sinatra::SessionHelper
  use Rack::MethodOverride

  get '/pry' do
    binding.pry
  end

  post '/' do
    user = User.find_by(:username => params[:username])
    if user && user.password == params[:password]
      session[:current_user] = user.id
      redirect '/admin'
    else
      redirect '/'
    end
  end

  get '/logout' do
    session[:current_user] = nil
    erb :not_authenticated
  end

end
