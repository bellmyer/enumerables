#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

print "list of pet names: "
p inventory.each_with_object([]){|pet, array| array << pet.name}

print "hash of pet names/quantities: "
p inventory.each_with_object({}){|pet, hash| hash[pet.name] = pet.quantity}