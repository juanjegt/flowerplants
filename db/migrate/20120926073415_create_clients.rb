class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :city
      t.string :town

      t.timestamps
    end
  end
end
