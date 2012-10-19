class CreateFamilyGroups < ActiveRecord::Migration
  def change
    create_table :family_groups do |t|
      t.decimal :profit_margin

      t.timestamps
    end
  end
end
