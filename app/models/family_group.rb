class FamilyGroup < ActiveRecord::Base
  attr_accessible :profit_margin
  belongs_to :client_group
  belongs_to :Family
end
