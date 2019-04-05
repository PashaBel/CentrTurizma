class AddIndex < ActiveRecord::Migration[5.2]
  def self.up
    add_index(:localities, [:name, :district_id, :locality_type_id], unique: true)
    add_index(:districts, [:name, :region_id], unique: true)
  end
  def self.down
    remove_index :localities, columns: [:name, :district_id, :locality_type_id]
    remove_index :districts, columns: [:name, :region_id]
  end
end
