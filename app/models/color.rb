class Color < ActiveRecord::Base
  belongs_to :Family
  # attr_accessible :title, :body
end
