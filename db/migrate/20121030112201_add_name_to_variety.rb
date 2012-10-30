class AddNameToVariety < ActiveRecord::Migration
  def change
  	add_column :varieties, :name, :string
  end
end
