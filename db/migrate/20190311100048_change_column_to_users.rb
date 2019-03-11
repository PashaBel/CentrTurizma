class ChangeColumnToUsers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :users do |t|
      t.rename :user_type_id, :is_admin
    end
    change_column :users, :is_admin, :boolean
  end
end
