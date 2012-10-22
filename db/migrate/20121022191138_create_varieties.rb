class CreateVarieties < ActiveRecord::Migration
  def change
    create_table :varieties do |t|
      t.references :Family
      t.references :Color

      t.timestamps
    end
    add_index :varieties, :Family_id
    add_index :varieties, :Color_id
  end
end
