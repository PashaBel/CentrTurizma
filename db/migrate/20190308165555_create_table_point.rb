class CreateTablePoint < ActiveRecord::Migration[5.2]
  def self.up
    create_table :points do |t|
      t.string :name, :limit => 20, null: false, unique: true
      t.text :description
      t.integer :point_type_id, null: false
      t.integer :district_id,null: false
      t.integer :locality_id, null: false
    end
  end
  def self.down
    drop_table :points
  end
end
