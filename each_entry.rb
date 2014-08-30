class NumberList
  include Enumerable
  
  def each
    yield 1
    yield 2, 3
    yield 4
  end
end

puts "cycle through each entry:"
NumberList.new.each_entry{|number_or_numbers| p number_or_numbers}
