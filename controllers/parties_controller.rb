class PartiesController < Sinatra::Base

    enable  :sessions

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
end
