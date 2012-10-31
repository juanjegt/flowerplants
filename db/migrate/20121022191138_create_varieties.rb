class CreateVarieties < ActiveRecord::Migration
  def change
    create_table :varieties do |t|
      t.references :family
      t.references :color

      t.timestamps
    end
    add_index :varieties, :family_id
    add_index :varieties, :color_id
  end
end
