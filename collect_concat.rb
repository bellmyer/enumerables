require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "names and legs: "
p store.collect_concat{|pet| [pet.name, pet.legs]}

print "names and in stock status: "
p store.collect_concat{|pet| [pet.name, pet.in_stock?]}