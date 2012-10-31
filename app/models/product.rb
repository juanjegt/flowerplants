class Product < ActiveRecord::Base
  belongs_to :family
  belongs_to :color
  belongs_to :variety
  attr_accessible :name, :photo

  def self.FindByProperties(family_id, color_id, variety_id)
  	where(:family_id => family_id, :color_id => color_id, :variety_id => variety_id).first
  end
  
  def self.WhereNameContains(name)
    where("name LIKE '%#{name}%'")
  end

end
