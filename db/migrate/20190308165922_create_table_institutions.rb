class CreateTableInstitutions < ActiveRecord::Migration[5.2]
  def self.up
    create_table :institutions do |t|
      t.string :fullname, :limit => 200, null: false, index: { unique: true }
      t.string :email, :limit => 30, null: false, index: { unique: true }
      t.integer :district_id, null: false
    end
  end
  def self.down
    drop_table :institutions
  end
end