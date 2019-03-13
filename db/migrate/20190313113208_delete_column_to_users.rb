class DeleteColumnToUsers < ActiveRecord::Migration[5.2]
  def self.up
    remove_column(:users, :email) if column_exists?(:users, :email)
  end
  def self.down
    add_column :users, :email, :string, :limit => 30 unless column_exists?(:users, :email)
  end
end
