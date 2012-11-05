require 'spec_helper'

describe CreatesVariety do
  before do 
    @variety = FactoryGirl.build(:variety)
    @variety.family = FactoryGirl.create(:family)
    @variety.color = FactoryGirl.create(:color)
  end 
  
  it "crea un producto nuevo" do
    CreatesVariety.create(@variety)
    Product.count.should == 1
  end

  it "crea una variedad nueva" do
    CreatesVariety.create(@variety)
    Variety.count.should == 1
  end

  it "el nombre del producto creado es igual al nombre de la familia mas el nombre del color mas el nombre de la variedad" do
    CreatesVariety.create(@variety)
    Product.first.name == @variety.family.name + ' ' + @variety.color.name + ' ' +@variety.name
  end

  it "el producto creado tiene asociado la variedad creada" do
    CreatesVariety.create(@variety)
    Product.first.variety == @variety
  end

  it "el producto creado tiene asociada la familia de la variedad que se ha guardado" do
    CreatesVariety.create(@variety)
    Product.first.family == @variety.family
  end

  it "el producto creado tiene asociado el color de la variedad que se ha guardado" do
    CreatesVariety.create(@variety)
    Product.first.color == @variety.color
  end

end