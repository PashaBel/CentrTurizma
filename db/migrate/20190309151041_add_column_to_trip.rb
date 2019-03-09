class AddColumnToTrip < ActiveRecord::Migration[5.2]
  def self.up
    add_column :trips, :students_count, :integer unless column_exists?(:trips, :students_counts)
  end
  def self.down
    remove_column :trips, :students_count if column_exists?(:trips, :students_count)
  end
end
