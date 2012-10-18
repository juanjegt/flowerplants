class Client < ActiveRecord::Base
  attr_accessible :city, :name, :phone, :town
  belongs_to :ClientGroup

  def self.WhereNameContains(name)
    where("name LIKE '%#{name}%'")
  end



end
