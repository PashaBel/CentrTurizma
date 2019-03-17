class CreateTableLocalities < ActiveRecord::Migration[5.2]
  def self.up
    create_table :localities do |t|
      t.string :name, :limit => 30, null: false, index: { unique: true }
      t.integer :district_id, null: false
      t.integer :locality_type_id, null: false
    end
  end
  def self.down
    drop_table :localities
  end
end
