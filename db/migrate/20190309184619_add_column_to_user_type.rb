class AddColumnToUserType < ActiveRecord::Migration[5.2]
  def self.up
    add_column :user_types, :lookup_code, :string unless column_exists?(:user_types, :lookup_code)
  end
  def self.down
    remove_column :user_types, :lookup_code if column_exists?(:centers, :lookup_code)
  end
end
