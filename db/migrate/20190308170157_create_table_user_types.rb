class CreateTableUserTypes < ActiveRecord::Migration[5.2]
  def self.up
    create_table :user_types do |t|
      t.string :name, :limit => 20
    end
  end
  def self.down
    drop_table :user_types
  end
end
