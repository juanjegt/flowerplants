class AddClientGroupToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :ClientGroup_id, :integer
  end
end
