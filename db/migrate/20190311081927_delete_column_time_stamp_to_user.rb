class DeleteColumnTimeStampToUser < ActiveRecord::Migration[5.2]
  def self.up
    remove_column(:users, :created_at) if column_exists?(:users, :created_at)
    remove_column(:users, :updated_at) if column_exists?(:users, :updated_at)
  end
  def self.down
    add_column :users, :created_at, :date unless column_exists?(:users, :created_at)
    add_column :users, :updated_at, :date unless column_exists?(:users, :updated_at)
  end
end
