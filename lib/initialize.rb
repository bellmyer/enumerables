require './lib/pet_inventory'
require './lib/log_data'

@numbers = [1, 0, 3, 2, 5, 4, 7, 6, 9, 8]

@inventory = PetInventory.new

@pokey_things = File.open('./data/pokey_things.txt', 'r')

@requests = LogData.new('./data/heroku.log')

def divider
  puts "\n--------\n\n"
end