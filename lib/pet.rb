class Pet
  attr_reader :name, :legs, :quantity
  
  def initialize name, legs, quantity
    @name = name
    @legs = legs
    @quantity = quantity
  end
  
  def in_stock?
    quantity > 0
  end
  
  def sold_out?
    quantity  == 0
  end
end