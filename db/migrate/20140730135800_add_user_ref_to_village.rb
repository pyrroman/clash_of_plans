class AddUserRefToVillage < ActiveRecord::Migration
  def change
    change_table :villages do |t|
      t.references :user
    end
  end
end
