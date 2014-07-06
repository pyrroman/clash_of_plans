class SetLevelDefault < ActiveRecord::Migration
  def up
    change_column :buildings, :level, :integer, default: 0
  end

  def down
  end
end
