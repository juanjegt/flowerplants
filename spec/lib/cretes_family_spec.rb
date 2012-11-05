require 'spec_helper'

describe CreatesFamily do
  before do 
    @family = FactoryGirl.build(:family)
  end 
  
  it "crea un producto nuevo" do
    CreatesFamily.create(@family)
    Product.count.should == 1
  end

  it "crea la familia" do
    CreatesFamily.create(@family)
    Family.count.should == 1
  end

  it "el nombre del producto creado es igual al de la familia" do
    CreatesFamily.create(@family)
    Product.first.name.should == @family.name
  end

  it "el producto creado tiene asignada la familia correcta" do
    CreatesFamily.create(@family)
    Product.first.family.should == @family
  end
end