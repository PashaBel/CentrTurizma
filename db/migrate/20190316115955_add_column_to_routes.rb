class AddColumnToRoutes < ActiveRecord::Migration[5.2]
  def self.up
    add_column :routes, :notes, :text, null: true unless column_exists?(:routes, :notes)
  end
  def self.down
    remove_column :routes, :notes if column_exists?(:routes, :notes)
  end
end
