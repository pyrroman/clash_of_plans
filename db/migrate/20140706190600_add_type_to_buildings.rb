class AddTypeToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :type, :string
  end
end
