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
require './models/user'
require './models/guest'
require './models/receipt'

# sessions
enable(:sessions)

# helpers
require './helpers/session_helpers'

# controllers
require './controllers/foods_controller'
require './controllers/orders_controller'
require './controllers/parties_controller'
require './controllers/guests_controller'
require './controllers/managers_controller'
require './controllers/session_controller'
require './controllers/receipts_controller'

# run app
map('/api/foods') { run FoodsController.new() }
map('/api/orders') { run OrdersController.new() }
map('/api/parties') { run PartiesController.new() }
map('/api/receipts') { run ReceiptsController.new() }
map('/admin') { run ManagersController.new() }
map('/sessions') { run SessionController.new() }
map('/guests') { run GuestsController.new() }

map('/') { run GuestsController.new() }
