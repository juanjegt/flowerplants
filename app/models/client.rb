class Client < ActiveRecord::Base
  attr_accessible :city, :name, :phone, :town

  def self.WhereNameContains(name)
    where("name LIKE '%#{name}%'")
  end



end
