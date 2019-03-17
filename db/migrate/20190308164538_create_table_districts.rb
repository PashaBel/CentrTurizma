class CreateTableDistricts < ActiveRecord::Migration[5.2]
  def self.up
    create_table :districts do |t|
      t.integer :region_id, null: false
      t.string :name, :limit => 20, null: false, index: { unique: true }
    end
  end
  def self.down
    drop_table :districts
  end
end
