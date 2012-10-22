class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.references :Family

      t.timestamps
    end
    add_index :colors, :Family_id
  end
end
