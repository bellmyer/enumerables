require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

puts "only pets that line up AFTER a big inventory: "
p store.drop_while{|pet| pet.quantity < 500}.map(&:name)