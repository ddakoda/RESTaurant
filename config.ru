# gems
require 'bundler'
Bundler.require()

# connect
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'rest'
)

# models
require './models/food'
require './models/order'
require './models/party'

# # ** Sessions **    DO I NEED THIS?!
# enable(:sessions)** DO I NEED THIS?!

# helpers
require './helpers/session_helpers'

# controllers
require './controllers/foods_controller'
require './controllers/orders_controller'
require './controllers/parties_controller'

# run app
map('/api/foods_controller') { run FoodsController.new() }
map('/api/orders') { run OrdersController.new() }
map('/api/parties') { run PartiesController.new() }
