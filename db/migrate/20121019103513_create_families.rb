class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.decimal :profit_margin
      t.integer :packaging_unit

      t.timestamps
    end
  end
end
