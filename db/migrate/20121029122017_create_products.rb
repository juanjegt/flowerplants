class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :photo
      t.references :family
      t.references :color
      t.references :variety

      t.timestamps
    end
    add_index :products, :family_id
    add_index :products, :color_id
    add_index :products, :variety_id
  end
end
