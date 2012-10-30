class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :photo
      t.references :Family
      t.references :Color
      t.references :Variety

      t.timestamps
    end
    add_index :products, :Family_id
    add_index :products, :Color_id
    add_index :products, :Variety_id
  end
end
