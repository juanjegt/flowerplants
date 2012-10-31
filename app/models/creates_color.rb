class CreatesColor
  
  def self.create(color)
    color.save && create_product(color)
  end

  private 
    def self.create_product(color)
      product = Product.new
      product.family = color.family
      product.color = color
      product.name = color.family.name + ' ' + color.name
      product.save
    end

end
