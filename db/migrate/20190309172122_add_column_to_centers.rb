class AddColumnToCenters < ActiveRecord::Migration[5.2]
  def self.up
    add_column :centers, :locality_id, :integer unless column_exists?(:centers, :locality_id)
  end
  def self.down
    remove_column :centers, :locality_id if column_exists?(:centers, :locality_id)
  end
end
