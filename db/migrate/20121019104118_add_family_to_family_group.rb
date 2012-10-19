class AddFamilyToFamilyGroup < ActiveRecord::Migration
  def change
  	add_column :family_groups, :Family_id, :integer
  end
end
