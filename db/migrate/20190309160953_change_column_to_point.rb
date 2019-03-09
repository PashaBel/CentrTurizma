class ChangeColumnToPoint < ActiveRecord::Migration[5.2]
  def self.up
    change_column :points, :name, :string, :limit => 100
  end
  def self.down
    change_column :points, :name, :string, :limit => 20
  end
end
