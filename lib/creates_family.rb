class CreatesFamily 
  
  def self.create(family)
    if family.save
      product = Product.new
      product.family = family
      product.name = family.name
      product.save
    else
      false
    end
  end

end
