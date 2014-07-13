class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :chief
      t.timestamps
    end

    change_table :buildings do |t|
      t.references :village
    end
  end
end
