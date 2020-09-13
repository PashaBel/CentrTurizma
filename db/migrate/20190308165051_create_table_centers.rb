class CreateTableCenters < ActiveRecord::Migration[5.2]
  def self.up
    create_table :centers do |t|
      t.string :fullname, :limit => 200, null: false, index: { unique: true }
      t.string :email, :limit => 50, null: false
      t.integer :district_id, null: false
    end
  end
  def self.down
    drop_table :centers
  end
end