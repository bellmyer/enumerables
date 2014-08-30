require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

puts "pets grouped by two: "
store.each_slice(2){|pets| p pets.map(&:name)}

puts "pets grouped by three: "
store.each_slice(3){|pets| p pets.map(&:name)}
