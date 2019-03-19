class AddIndexToLocality < ActiveRecord::Migration[5.2]
  def self.up
    add_index(:localities, [:name, :district_id], unique: true)
  end
  def self.down
    remove_index :localities, columns: [:name, :district_id]
  end
end
