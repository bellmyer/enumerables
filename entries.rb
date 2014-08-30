require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "pet names: "
p store.entries.map(&:name)

print "pet objects: "
p store.entries