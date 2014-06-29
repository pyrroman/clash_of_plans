class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :level
      t.integer :th_max_level
      t.integer :ultimate_level
      t.datetime :upgrade_started_at

      t.timestamps
    end
  end
end
