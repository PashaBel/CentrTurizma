class CreateTableInstitutions < ActiveRecord::Migration[5.2]
  def self.up
    create_table :institutions do |t|
      t.string :name, :limit => 50
      t.string :email, :limit => 30
      t.integer :center_id
    end
  end
  def self.down
    drop_table :institutions
  end
end
