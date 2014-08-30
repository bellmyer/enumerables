require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

puts "numbered pet list: "
store.each_with_index{|pet, i| puts "pet #{i}: #{pet.name}"}