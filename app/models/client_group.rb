class ClientGroup < ActiveRecord::Base
  attr_accessible :name
  has_many :clients

   def self.WhereNameContains(name)
    where("name LIKE '%#{name}%'")
   end

end
