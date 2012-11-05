require 'spec_helper'
require 'creates_family'

describe CreatesFamily do

  it "al principio no habrá ningún producto"
  	Product.count should == 0
  end

  it "al principio no habrá ninguna familia"
  	Family.count should == 0
  end

  it "se deberia crear un producto nuevo" do
  	familia = Family.new
  	familia.name = "familia"
  	CreatesFamily.create(familia)
  	Product.count should == 1
  end

  it "se deberia crear la familia" do
  	Family.count should == 1
  end

  it "el nombre del producto creado tiene que ser igual al de la familia"
  	Product.first.name == "familia"
  end

  it "el producto creado tiene que tener asignada a la familia"
  	Product.first.family == Family.first
  end
end
