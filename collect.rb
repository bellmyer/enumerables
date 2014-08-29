require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "pet names: "
p store.collect(&:name)

print "pet leg counts: "
p store.collect{|pet| pet.legs}