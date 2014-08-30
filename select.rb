require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "pets with four legs: "
p store.select{|pet| pet.legs == 4}.map(&:name)

print "pets with less than 100 in stock: "
p store.select{|pet| pet.quantity < 100}.map(&:name)