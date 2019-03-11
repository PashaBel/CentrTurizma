class AddColumnToTrips < ActiveRecord::Migration[5.2]
  def self.up
    add_column :trips, :created_at, :datetime, default: -> {'CURRENT_TIMESTAMP'} unless column_exists?(:trips, :created_at)
    add_column :trips, :updated_at, :datetime, null: true unless column_exists?(:trips, :updated_at)
  end
  def self.down
    remove_column(:trips, :created_at) if column_exists?(:trips, :created_at)
    remove_column(:trips, :updated_at) if column_exists?(:trips, :updated_at)
  end
end
