require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "first pet with four legs: "
puts store.find{|pet| pet.legs == 4}.name

no_pet = Pet.new('none', 0, 0)
print "first pet with 3 legs: "
puts store.find(lambda{no_pet}){|pet| pet.legs == 3}.name