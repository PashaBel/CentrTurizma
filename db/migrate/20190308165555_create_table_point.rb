class CreateTablePoint < ActiveRecord::Migration[5.2]
  def self.up
    create_table :points do |t|
      t.string :name, :limit => 20
      t.text :description
      t.integer :point_type_id
      t.integer :district_id
    end
  end
  def self.down
    drop_table :points
  end
end
