class AddColumnToPoints < ActiveRecord::Migration[5.2]
  def self.up
    add_column :points, :locality_id, :integer unless column_exists?(:points, :locality_id)
  end
  def self.down
    remove_column :points, :locality_id if column_exists?(:points, :locality_id)
  end
end
