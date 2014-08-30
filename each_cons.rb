require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

puts "pets in cascading groups of two: "
store.each_cons(2){|pets| p pets.map(&:name) }

puts "pets in cascading groups of three: "
store.each_cons(3){|pets| p pets.map(&:name) }