class CreateTableCenters < ActiveRecord::Migration[5.2]
  def self.up
    create_table :centers do |t|
      t.string :shortname, :limit => 50, null: false, index: { unique: true }
      t.string :fullname, :limiit => 200
      t.integer :district_id, null: false
      t.string :email, :limit => 50, null: false
    end
  end
  def self.down
    drop_table :centers
  end
end
