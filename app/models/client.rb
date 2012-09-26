class Client < ActiveRecord::Base
  attr_accessible :city, :name, :phone, :town

  def search_name
    self.name + ' (' + (self.town.nil? ? '':self.town) + ' - ' + (self.city.nil? ? '':self.city) + ')'
  end

end
