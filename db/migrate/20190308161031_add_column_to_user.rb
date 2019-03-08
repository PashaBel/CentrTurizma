class AddColumnToUser < ActiveRecord::Migration[5.2]
    def up
      add_column :users, :center_id, :integer unless column_exists?(:users, :center_id)
      add_column :users, :user_type_id, :integer unless column_exists?(:users, :user_type_id)
      add_column :users, :email, :string, :limit => 30 unless column_exists?(:users, :email)
    end
    def down
      remove_column(:users, :email) if column_exists?(:users, :email)
      remove_column(:users, :user_type_id) if column_exists?(:users, :user_type_id)
      remove_column(:users, :center_id) if column_exists?(:users, :center_id)
    end
end
