require 'digest'

class Pet
  attr_accessor :name, :legs, :quantity
  
  def initialize name, legs, quantity
    @name = name
    @legs = legs
    @quantity = quantity
  end
  
  def with_attributes attributes
    attributes.each{|attribute, value| send :"#{attribute}=", value}
    self
  end
  
  def in_stock?
    quantity > 0
  end
  
  def sold_out?
    quantity  == 0
  end
  
  def low_inventory?
    quantity < 100
  end
  
  def <=>(other_pet)
    quantity <=> other_pet.quantity
  end
  
  def secret_code
    code = name
    100_000.times{ code = Digest::SHA512.hexdigest(code)[0,8] }
    
    code
  end
end