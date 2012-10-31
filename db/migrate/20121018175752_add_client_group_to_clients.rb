class AddClientGroupToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :client_group_id, :integer
  end
end
