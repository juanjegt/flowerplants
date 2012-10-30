class Color < ActiveRecord::Base
  attr_accessible :name
  belongs_to :Family
  has_many :varieties
  before_save :create_product
  
private
  def create_product
  	product = Product.new
  	product.Family = self.Family
  	product.Color = self
  	product.name = product.Family.name + ' ' + name
  	
  	product.save
  end

end
