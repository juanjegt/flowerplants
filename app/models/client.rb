class Client < ActiveRecord::Base
  attr_accessible :city, :name, :phone, :town
  belongs_to :client_group

  def self.WhereNameContains(name)
    where("name LIKE '%#{name}%'")
  end



end
