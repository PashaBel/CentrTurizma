class AddColumnToRoutes < ActiveRecord::Migration[5.2]
  def self.up
    add_column :routes, :created_at, :datetime, default: -> {'CURRENT_TIMESTAMP'} unless column_exists?(:routes, :created_at)
    add_column :routes, :updated_at, :datetime, null: true unless column_exists?(:routes, :updated_at)
  end
  def self.down
    remove_column(:routes, :created_at) if column_exists?(:routes, :created_at)
    remove_column(:routes, :updated_at) if column_exists?(:routes, :updated_at)
  end
end
