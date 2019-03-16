class CreateTableRegions < ActiveRecord::Migration[5.2]
  def self.up
    create_table :regions do |t|
        t.string :name, :limit => 20, null: false
    end
  end
  def self.down
    drop_table :regions
  end
end
