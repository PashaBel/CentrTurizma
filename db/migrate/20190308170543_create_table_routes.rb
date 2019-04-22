class CreateTableRoutes < ActiveRecord::Migration[5.2]
  def self.up
    create_table :routes do |t|
      t.string :name, null: false
      t.integer :point_id, null: false
      t.integer :trip_id, null: false
      t.integer :display_order, null: false
      t.text :notes, null: true
      t.datetime :created_at, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.datetime :updated_at, null: true
    end
  end
  def self.down
    drop_table :routes
  end
end
