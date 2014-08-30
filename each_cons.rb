#!/usr/bin/env ruby

require './lib/pet_inventory'
require './lib/pet'

inventory = PetInventory.new
inventory.display

puts "pets in cascading groups of two: "
inventory.each_cons(2){|pets| p pets.map(&:name) }

puts "pets in cascading groups of three: "
inventory.each_cons(3){|pets| p pets.map(&:name) }