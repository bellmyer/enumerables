require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "list of pet names: "
p store.each_with_object([]){|pet, array| array << pet.name}

print "hash of pet names/quantities: "
p store.each_with_object({}){|pet, hash| hash[pet.name] = pet.quantity}