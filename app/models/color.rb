class Color < ActiveRecord::Base
  attr_accessible :name
  belongs_to :family
  has_many :varieties

  def product
    Product.where(:family_id => family_id, :color_id => id, :variety_id => nil).first
  end

end
