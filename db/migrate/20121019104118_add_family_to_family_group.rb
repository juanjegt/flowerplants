class AddFamilyToFamilyGroup < ActiveRecord::Migration
  def change
  	add_column :family_groups, :family_id, :integer
  end
end
