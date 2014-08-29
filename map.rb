require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "pet names: "
p store.map(&:name)

print "pet leg counts: "
p store.map{|pet| pet.legs}