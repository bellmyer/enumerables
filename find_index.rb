require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "index for scorpions: "
puts store.find_index{|pet| pet.name == 'scorpion'}

print "index for first four-legged pet: "
puts store.find_index{|pet| pet.legs == 4}

print "index for first pet with over 100 in stock: "
puts store.find_index{|pet| pet.quantity > 100}