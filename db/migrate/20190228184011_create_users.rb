class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name, null: false, index: { unique: true }
      t.string :user_password, null: false, index: { unique: true }
      t.integer :center_id, null: false
      t.integer :is_admin, null: false
    end
  end
  def self.down
    drop_table :users
  end
end
