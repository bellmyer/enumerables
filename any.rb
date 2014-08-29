require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "any pets have three legs? "
puts store.any?{|pet| pet.legs == 3}

print "any pets sold out? "
puts store.any?(&:sold_out?)

print "any pets have a quantity of just one? "
puts store.any?{|pet| pet.quantity == 1}

