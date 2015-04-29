class UsersController < Sinatra::Base
  enable  :sessions
  helpers Sinatra::SessionHelper
  use Rack::MethodOverride

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)

  get '/session' do
    content_type :json
    User.all.to_json
  end
end
