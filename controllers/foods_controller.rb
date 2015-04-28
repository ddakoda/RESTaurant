class FoodsController < Sinatra::Base

    enable  :sessions
    helpers Sinatra::SessionHelper

# GET/Displays the waitstaff's application
  get '/' do
    'WikiWiki'
  end
  # GET	/api/foods	All food items available
  get '/api/foods' do
    content_type :json
    Food.all.to_json
  end
  # GET	/api/foods/:id	A single food item and all the parties that included it
  get '/api/foods/:id' do
    food = Food.find(params[:id].to_i)
    food.to_json
  end
  # POST	/api/foods	Creates a new food item
  post '/api/foods' do
    content_type :json
    food = Food.create(params[:food])
    food.to_json
  end
  # PATCH	/api/foods/:id	Updates a food item
  patch '/api/foods/:id' do
    content_type :json
    food = Food.find(params[:id].to_i).update(params[:food])
    food.to_json
  end
  # PUT	/api/foods/:id	Updates a food item
  put '/api/foods/:id' do
    content_type :json
    food = Food.find(params[:id].to_i).update(params[:food])
    food.to_json
  end
  # DELETE	/api/foods/:id	Deletes a food item
  delete '/api/foods/:id' do
    content_type :json
    id = params[:id].to_i
    food = Food.destroy(id)
  end
end
