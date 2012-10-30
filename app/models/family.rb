class Family < ActiveRecord::Base
  attr_accessible :name, :packaging_unit, :profit_margin
  has_many :colors
  before_save :create_product
  
private
  def create_product
  	product = Product.new
  	product.Family = self
  	product.name = name
  	product.save
  end
  
end
