class AddColumnToInstitutions < ActiveRecord::Migration[5.2]
  def self.up
    add_column :institutions, :locality_id, :integer unless column_exists?(:institutions, :locality_id)
  end
  def self.down
    remove_column :institutions, :locality_id if column_exists?(:institutions, :locality_id)
  end
end
