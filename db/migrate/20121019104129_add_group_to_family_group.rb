class AddGroupToFamilyGroup < ActiveRecord::Migration
  def change
  	add_column :family_groups, :ClientGroup_id, :integer
  end
end
