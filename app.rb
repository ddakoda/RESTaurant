require 'bundler'
Bundler.require()


# ** Connection **
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'rest'
)

# ** Models **
require './models/food'
require './models/order'
require './models/party'

# ** Sessions **
enable(:sessions)

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
# GET	/api/parties	All parties
get '/api/parties' do
  content_type :json
  Party.all.to_json
end
# GET	/api/parties/:id	A single party and all the orders it contains
get '/api/parties/:id' do
  party = Party.find(params[:id].to_i)
  party.to_json
end
# POST	/api/parties	Creates a new party
post '/api/parties' do
  content_type :json
  party = Party.create(params[:party])
  party.to_json
end
# PATCH	/api/parties/:id	Updates a party's details
patch '/api/parties/:id' do
  content_type :json
  party = Party.find(params[:id].to_i).update(params[:party])
  party.to_json
end
# PUT	/api/parties/:id	Updates a party's details
put '/api/parties/:id' do
  content_type :json
  party = Party.find(params[:id].to_i).update(params[:party])
  party.party
end
# DELETE	/api/parties/:id	Delete a party
delete '/api/parties/:id' do
  content_type :json
  id = params[:id].to_i
  party = Party.destroy(id)
end
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
# GET	/api/parties/:id/receipt	Saves the party's receipt data to a file.
get '/api/parties/:id/receipt' do
  content_type :json
  Receipt.all.to_json
end
# PATCH	/api/parties/:id/checkout	Marks the party as paid
patch '/api/parties/:id/checkout' do
  content_type :json
  checkout = Checkout.find(params[:id].to_i).update(params[:checkout])
  checkout.to_json
end
# PUT	/api/parties/:id/checkout	Marks the party as paid
put '/api/parties/:id/checkout' do
  content_type :json
  checkout = Checkout.find(params[:id].to_i).update(params[:checkout])
  checkout.to_json
end
