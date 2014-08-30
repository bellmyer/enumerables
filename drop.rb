require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "skipping the first two pets: "
p store.drop(2).map(&:name)

print "skipping nothing: "
p store.drop(0).map(&:name)