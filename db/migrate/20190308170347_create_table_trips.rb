class CreateTableTrips < ActiveRecord::Migration[5.2]
  def self.up
    create_table :trips do |t|
      t.date :date
      t.integer :institution_id
    end
  end
  def self.down
    drop_table :trips
  end
end
