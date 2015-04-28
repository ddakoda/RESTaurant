class OrdersController < Sinatra::Base

  enable  :sessions
  helpers Sinatra::SessionHelper
# POST	/api/orders	Creates a new order
  post '/api/orders' do
    content_type :json
    order = Order.create(params[:order])
    order.to_json
  end
  # PATCH	/api/orders/:id	Change item to no-charge
  patch '/api/order/:id' do
    content_type :json
    order = Order.find(params[:id].to_i).update(params[:order])
    order.to_json
  end
  # DELETE	/api/orders/:id	Removes an order
  delete '/api/orders/:id' do
    content_type :json
    id = params[:id].to_i
    order = Order.destroy(id)
  end
end
