class AddGroupToFamilyGroup < ActiveRecord::Migration
  def change
  	add_column :family_groups, :client_group_id, :integer
  end
end
