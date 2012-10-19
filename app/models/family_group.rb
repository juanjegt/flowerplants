class FamilyGroup < ActiveRecord::Base
  attr_accessible :profit_margin
  belongs_to :ClientGroup
  belongs_to :Family
end
