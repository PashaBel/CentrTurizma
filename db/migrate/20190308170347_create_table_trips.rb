class CreateTableTrips < ActiveRecord::Migration[5.2]
  def self.up
    create_table :trips do |t|
      t.string :number_order, :limit => 10, null: false
      t.date :date_order, null: false
      t.date :date, null: false
      t.integer :institution_id, null: false
      t.integer :students_count, null: false
      t.datetime :created_at, default: -> {'CURRENT_TIMESTAMP'}, null: false
      t.datetime :updated_at, null: true
    end
  end
  def self.down
    drop_table :trips
  end
end
