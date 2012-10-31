class Variety < ActiveRecord::Base
  attr_accessible :name
  belongs_to :family
  belongs_to :color

  def product
    Product.where(:family_id => family_id, :color_id => color_id, :variety_id => id).first
  end

end
