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
  put '/:id' do
    content_type :json
    party = Party.find(params[:id].to_i).update(params[:party])
    party.party
  end
  # DELETE	/api/parties/:id	Delete a party
  delete '/:id' do
    content_type :json
    id = params[:id].to_i
    party = Party.destroy(id)
  end


  # PATCH	/api/parties/:id/checkout	Marks the party as paid
  patch '/:id/checkout' do
    content_type :json
    checkout = Checkout.find(params[:id].to_i).update(params[:checkout])
    checkout.to_json
  end
  # PUT	/api/parties/:id/checkout	Marks the party as paid
  put '/:id/checkout' do
    content_type :json
    checkout = Checkout.find(params[:id].to_i).update(params[:checkout])
    checkout.to_json
  end
end
