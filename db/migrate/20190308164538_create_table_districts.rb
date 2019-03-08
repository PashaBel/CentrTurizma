class CreateTableDistricts < ActiveRecord::Migration[5.2]
  def self.up
    create_table :districts do |t|
      t.integer :region_id
      t.string :name, :limit => 20
    end
  end
  def self.down
    drop_table :districts
  end
end
