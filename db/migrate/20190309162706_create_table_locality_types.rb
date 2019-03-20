class CreateTableLocalityTypes < ActiveRecord::Migration[5.2]
  def self.up
    create_table :locality_types do |t|
      t.string :short_name, :limit => 5, null: false, index: { unique: true }
    end
  end
  def self.down
    drop_table :locality_types
  end
end
