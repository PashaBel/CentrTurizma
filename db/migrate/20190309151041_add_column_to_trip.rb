class AddColumnToTrip < ActiveRecord::Migration[5.2]
  def self.up
    add_column :trips, :students_count, :integer unless column_exists?(:trips, :students_counts)
    add_column :trips, :number_order, :string, :limit => 20 unless column_exists?(:trips, :number_order)
    add_column :trips, :date_order, :date unless column_exists?(:trips, :date_order)
  end
  def self.down
    remove_column :trips, :students_count if column_exists?(:trips, :students_count)
    remove_column :trips, :number_order if column_exists?(:trips, :number_order)
    remove_column :trips, :date_order if column_exists?(:trips, :date_order)
  end
end
