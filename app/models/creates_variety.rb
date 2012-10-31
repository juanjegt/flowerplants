class CreatesVariety
  
  def self.create(variety)
    variety.save && create_product(variety)
  end

  private 
    def self.create_product(variety)
      product = Product.new
      product.family = variety.family
      product.color = variety.color
      product.variety = variety
      product.name = variety.family.name + ' ' + variety.color.name + ' ' + variety.name
      product.save
    end

end
