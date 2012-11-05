require 'spec_helper'

describe CreatesColor do
  before do 
    @color = FactoryGirl.build(:color)
    @color.family = FactoryGirl.create(:family)
  end 
  
  it "crea un producto nuevo" do
    CreatesColor.create(@color)
    Product.count.should == 1
  end

  it "crea un color nuevo" do
    CreatesColor.create(@color)
    Color.count.should == 1
  end

  it "el nombre del producto creado es igual al nombre de la familia mas el nombre del color" do
    CreatesColor.create(@color)
    Product.first.name == @color.family.name + ' ' + @color.name
  end

  it "el producto creado tiene asociado el color" do
    CreatesColor.create(@color)
    Product.first.color == @color
  end

  it "el producto creado tiene asociada la familia del color que se ha guardado" do
    CreatesColor.create(@color)
    Product.first.family == @color.family
  end

end