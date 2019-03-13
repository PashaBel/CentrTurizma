class AddColumnEmailToCenters < ActiveRecord::Migration[5.2]
  def self.up
    add_column :centers, :email, :string, :limit => 30 unless column_exists?(:centers, :email)
  end
  def self.down
    remove_column(:centers, :email) if column_exists?(:centers, :email)
  end
end
