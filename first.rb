require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "first pet on the list: "
p store.first.name

print "first 3 pets on the list: "
p store.first(3).map(&:name)