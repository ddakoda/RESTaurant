class FoodsController < Sinatra::Base

    enable  :sessions
    helpers Sinatra::SessionHelper

  def food_params
    return params[:food] if params[:food]
    body_data = {}
    @request_body ||= request.body.read.to_s
    body_data = (JSON(@request_body)) unless @request_body.empty?
    body_data = body_data['food'] || body_data
  end

  # GET	/api/foods	All food items available
  get '/' do
    content_type :json
    Food.all.to_json
  end
  # GET	/api/foods/:id	A single food item and all the parties that included it
  get '/:id' do
    food = Food.find(params[:id].to_i)
    food.to_json
  end
  # POST	/api/foods	Creates a new food item
  post '/' do
    authenticate!
    content_type :json
    food = Food.create(params[:food])
    food.to_json
  end
  # PATCH	/api/foods/:id	Updates a food item
  patch '/:id' do
    authenticate!
    content_type :json
    food = Food.find(params[:id].to_i).update(params[:food])
    food.to_json
  end
  # PUT	/api/foods/:id	Updates a food item
  put '/:id' do
    authenticate!
    content_type :json
    food = Food.find(params[:id].to_i).update(params[:food])
    food.to_json
  end
  # DELETE	/api/foods/:id	Deletes a food item
  delete '/:id' do
    authenticate!
    content_type :json
    id = params[:id].to_i
    food = Food.destroy(id)
  end
end
