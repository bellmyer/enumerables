require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "all pets have legs? "
puts store.all?{|pet| pet.legs > 0}

print "all pets are in stock? "
puts store.all?(&:in_stock?)

print "all pets have at least 5 in stock? "
puts store.all?{|pet| pet.quantity >= 5}