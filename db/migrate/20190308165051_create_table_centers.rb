class CreateTableCenters < ActiveRecord::Migration[5.2]
  def self.up
    create_table :centers do |t|
      t.string :name, :limit => 50
      t.integer :district_id
    end
  end
  def self.down
    drop_table :centers
  end
end
