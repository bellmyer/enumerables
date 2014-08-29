require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "types of pets: "
puts store.count

print "types of pets with four legs: "
puts store.count{|pet| pet.legs == 4}