require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

puts "print pet names, twice: "
store.cycle(2){|pet| puts pet.name}

start_time = Time.now

puts "print pet names repeatedly, for one whole second: "
store.cycle do |pet|
  puts pet.name
  break if Time.now - start_time >= 1
end