class Variety < ActiveRecord::Base
  attr_accessible :name
  belongs_to :Family
  belongs_to :Color

end
