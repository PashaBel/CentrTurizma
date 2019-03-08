class CreateTablePointType < ActiveRecord::Migration[5.2]
  def self.up
    create_table :point_types do |t|
      t.string :name, :limit => 20
    end
  end
  def self.down
    drop_table :point_types
  end
end
