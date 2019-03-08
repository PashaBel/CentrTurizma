class CreateTableRoutes < ActiveRecord::Migration[5.2]
  def self.up
    create_table :routes do |t|
      t.string :name
      t.integer :point_id
      t.integer :trip_id
      t.integer :display_order
    end
  end
  def self.down
    drop_table :routes
  end
end
