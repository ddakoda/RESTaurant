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
    Food.create({name: 'Banana'})
    Food.create({name: 'Coffeee'})
  end
end


namespace :db do
  desc 'Empty Database'
  task :destroy_all do
    Food.destroy_all
    Order.destroy_all
    Party.destroy_all
    # Guest.destroy_all
    # Receipt.destroy_all
  end

  desc "Fill Database some Junk Data"
  task :junk_data do

    # Generate random Food
    foods_starting = ['Americano', 'Cafe au Lait', 'Cappuccino', 'Cortado', 'Doppio', 'Flat White', 'Latte', 'Macchiato']
    food_ending = ['Almond Milk', 'Cashew Milk', 'Coconut Milk', 'Hemp Milk', 'Pistachio Milk']
    cuisines = ['Coffee', 'Gluten Free', 'Paleo', 'Vegan']
    rand(5..15).times do
      Food.create({
          name: ( foods_starting.sample + ' ' + food_ending.sample),
          cents: rand(500..1500),
          cuisine: cuisines.sample
      })
    end

    # Generate random Parties
    rand(5..15).times do |num|
      Party.create({
        table_number: num,
        is_paid: [true, false, false].sample
      })
    end

    # Generate random Orders
    parties = Party.all
    foods = Food.all
    rand(10..35).times do |num|
      Order.create({
        party: parties.sample,
        food: foods.sample
      })
    end

  end # task :junk_data

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
