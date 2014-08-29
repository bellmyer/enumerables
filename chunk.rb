require_relative './lib/pet_store'
require_relative './lib/pet'

store = PetStore.new
store.print_inventory

pets_by_leg_count = store.chunk(&:legs)

pets_by_leg_count.each do |leg_count, pet_list|
  puts "#{leg_count}: #{pet_list.map(&:name).join(',')}"
end