class Family < ActiveRecord::Base
  attr_accessible :name, :packaging_unit, :profit_margin
  has_many :colors

  def product
  	Product.where(:family_id => id, :color_id => nil, :variety_id => nil).first
  end
  
end
