class CreateTableLocalities < ActiveRecord::Migration[5.2]
  def self.up
    create_table :localities do |t|
      t.string :name, :limit => 30
      t.integer :district_id
      t.integer :locality_type_id
    end
  end
  def self.down
    drop_table :localities
  end
end
