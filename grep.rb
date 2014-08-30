require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

print "pets with the letter 'o' in the name: "
p store.map(&:name).grep(/o/)

print "first letter of each pet with the letter 'i' in the name: "
p store.map(&:name).grep(/i/){|name| name[0]}