class Variety < ActiveRecord::Base
  belongs_to :Family
  belongs_to :Color
  # attr_accessible :title, :body
end
