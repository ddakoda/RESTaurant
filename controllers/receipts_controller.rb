class ReceiptsController < Sinatra::Base

# GET	/api/parties/:id/receipt	Saves the party's receipt data to a file.
  get '/:id/receipt' do
    content_type :json
    Receipt.all.to_json
  end
end
