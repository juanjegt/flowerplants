class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.references :family

      t.timestamps
    end
    add_index :colors, :family_id
  end
end
