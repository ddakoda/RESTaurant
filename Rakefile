# ** GEMS **
require 'bundler'
Bundler.require()

# ** CONNECTION **
ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'rest'
)

# ** MODELS **
require './models/food'
require './models/guest'
require './models/order'
require './models/party'
require './models/receipt'

# Goal is to say 'coffee!'
namespace :demo do
  desc 'coffee'
  task :coffee do
    puts 'coffee!'
  end
end

namespace :db do

  desc 'Generate Nil'
  task :nil_food do
    Item.create({name: 'nil'})
  end

  desc 'Generate Manager'
  task :manager_order do
    10.times { Order.create({name: Faker::Name.name}) }
  end

end

namespace :db do
  desc 'populate items'
  task :gen_items do
    Item.create({name: 'Cheese'})
    Item.create({name: 'Spam'})
  end
end


namespace :db do
  desc 'Empty Database'
  task :destroy_all do
    Food.destroy_all
    Order.destroy_all
    Party.destroy_all
    Guest.destroy_all
    Receipt.destroy_all
  end
end
#
# namespace :wake do
#
#   desc 'wake'
#   task :wake do
#     puts 'coffee'
#     puts 'coffee'
#     puts 'coffee'
#     puts 'coffee'
#   end
