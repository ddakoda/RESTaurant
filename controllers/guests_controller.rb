class GuestController < Sinatra::Base
  enable  :sessions
  helpers Sinatra::SessionHelper

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)


  # ***** Debugging *****
  get '/pry' do
    binding.pry
  end

  # ***** ROUTES *****
  get '/' do
    erb :index
  end

  get '/admin' do
    if current_user
      erb :admin_authenticated
    else
      erb :admin_non_authenticated
    end
  end

end

# class GuestsController < Sinatra::Base
#   enable  :sessions
#   helpers Sinatra::SessionHelper
#   use Rack::MethodOverride
#
#   set :views, File.expand_path('../../views', __FILE__)
#   set :public_folder, File.expand_path('../../public', __FILE__)
#
#   get '/pry' do
#     binding.pry
#   end
#
#   get '/' do
#     erb :index
#   end
#
#   get '/admin' do
#   if current_user
#     erb :authenticated
#   else
#     erb :not_authenticated
#   end
#
#   get '/logout' do
#     session[:current_user] = nil
#     redirect '/'
#   end
#
#   post '/sessions' do
#
#   end
#
#   delete '/sessions' do
#
#   end
#
# end
# end
