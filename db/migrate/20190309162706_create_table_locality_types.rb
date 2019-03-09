class CreateTableLocalityTypes < ActiveRecord::Migration[5.2]
  def self.up
    create_table :locality_types do |t|
      t.string :name, :limit => 20
    end
  end
  def self.down
    drop_table :locality_types
  end
end