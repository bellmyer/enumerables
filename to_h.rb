#!/usr/bin/env ruby

class List
  include Enumerable
  attr_reader :elements
  
  def initialize
    @elements = [['a', 'b'], ['c', 'd'], ['e', 'f']]
  end
  
  def each
    @elements.each{|element| yield element}
  end
end

list = List.new

print "list: "
p list.elements

print "converted to a hash for some reason: "
p list.to_h